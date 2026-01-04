import pyodbc
from difflib import SequenceMatcher

CONN_STR = "DRIVER={ODBC Driver 17 for SQL Server};SERVER=LAPTOP-2KNNL0C4\\SQQL;DATABASE=QuizDB;Trusted_Connection=yes;"
SQL_FILE = "quiz.sql"
SIMILARITY_THRESHOLD = 0.70


def get_conn():
    return pyodbc.connect(CONN_STR, autocommit=False)


def run_sql_file_if_needed():
    """
    If 'quiz' table does not exist or is empty,
    read quiz.sql and execute statements.
    """
    conn = get_conn()
    cur = conn.cursor()

    cur.execute("SELECT COUNT(*) FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'quiz'")
    if cur.fetchone()[0] == 0:
        print("[setup] quiz table not found. Running quiz.sql...")
        with open(SQL_FILE, "r", encoding="utf-8") as f:
            script = f.read()

        lines = [ln for ln in script.splitlines() if ln.strip().upper() != "GO"]
        statements = [s.strip() for s in "\n".join(lines).split(";") if s.strip()]

        for stmt in statements:
            try:
                cur.execute(stmt)
            except Exception as e:
                print("[setup] statement failed:", e)

        conn.commit()
    conn.close()


def similarity(a, b):
    return SequenceMatcher(None, a.lower(), b.lower()).ratio()


def fetch_random_questions_by_topic(topic, n):
    conn = get_conn()
    cur = conn.cursor()
    sql = f"""
    SELECT TOP ({n}) question, option_a, option_b, option_c, option_d, correct_answer
    FROM quiz
    WHERE topic = ?
    ORDER BY NEWID()
    """
    cur.execute(sql, (topic,))
    rows = cur.fetchall()
    conn.close()
    return rows


def save_score(name, score, total):
    conn = get_conn()
    cur = conn.cursor()
    cur.execute(
        "INSERT INTO scores (name, score, total) VALUES (?, ?, ?)",
        (name, score, total)
    )
    conn.commit()
    conn.close()


def show_leaderboard(limit=5):
    conn = get_conn()
    cur = conn.cursor()
    cur.execute(
        "SELECT TOP (?) name, score, total, taken_at FROM scores ORDER BY score DESC",
        (limit,)
    )
    rows = cur.fetchall()
    conn.close()

    print("\n🏆 Leaderboard")
    for i, row in enumerate(rows, start=1):
        print(f"{i}. {row[0]} → {row[1]}/{row[2]} ({row[3]})")


def get_topics():
    conn = get_conn()
    cur = conn.cursor()
    cur.execute("SELECT DISTINCT topic FROM quiz")
    topics = [row[0] for row in cur.fetchall()]
    conn.close()
    return topics


def run_quiz():
    run_sql_file_if_needed()

    topics = get_topics()
    print("\nAvailable Topics:")
    for i, t in enumerate(topics, start=1):
        print(f"{i}. {t}")

    while True:
        choice = input("Select a topic number: ")
        if choice.isdigit() and 1 <= int(choice) <= len(topics):
            selected_topic = topics[int(choice) - 1]
            break
        print("Invalid choice.")

    conn = get_conn()
    cur = conn.cursor()
    cur.execute("SELECT COUNT(*) FROM quiz WHERE topic = ?", (selected_topic,))
    total_q = cur.fetchone()[0]
    conn.close()

    default_n = 10 if total_q >= 10 else total_q

    n = int(input(f"How many questions? (max {total_q}): ") or default_n)
    name = input("Enter your name: ") or "Anonymous"

    questions = fetch_random_questions_by_topic(selected_topic, n)
    score = 0

    for i, q in enumerate(questions, start=1):
        question, A, B, C, D, correct = q
        print(f"\nQ{i}. {question}")
        print(f"A. {A}\nB. {B}\nC. {C}\nD. {D}")

        ans = input("Your answer: ").strip()
        chosen = {"A": A, "B": B, "C": C, "D": D}.get(ans.upper(), ans)

        if chosen.lower() == correct.lower() or similarity(chosen, correct) >= SIMILARITY_THRESHOLD:
            print("✅ Correct")
            score += 1
        else:
            print(f"❌ Wrong (Correct: {correct})")

    save_score(name, score, n)
    print(f"\n🎯 Final Score: {score}/{n}")
    show_leaderboard()


if __name__ == "__main__":
    run_quiz()
