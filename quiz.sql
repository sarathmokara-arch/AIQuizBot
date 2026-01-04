create database QuizDB
use QuizDB

-- Create quiz table if not exists
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='quiz' AND xtype='U')
BEGIN
    CREATE TABLE quiz (
        id INT IDENTITY(1,1) PRIMARY KEY,
        question NVARCHAR(400) NOT NULL,
        option_a NVARCHAR(200) NOT NULL,
        option_b NVARCHAR(200) NOT NULL,
        option_c NVARCHAR(200) NOT NULL,
        option_d NVARCHAR(200) NOT NULL,
        correct_answer NVARCHAR(200) NOT NULL,
        topic NVARCHAR(100) NOT NULL
    );
END
GO
select * from quiz
-- Create scores table if not exists
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='scores' AND xtype='U')
BEGIN
    CREATE TABLE scores (
        id INT IDENTITY(1,1) PRIMARY KEY,
        name NVARCHAR(200) NOT NULL,
        score INT NOT NULL,
        total INT NOT NULL,
        taken_at DATETIME DEFAULT GETDATE()
    );
END
GO
select * from scores
--python questions
INSERT INTO quiz VALUES ('Which keyword is used to define a function in Python?', 'def', 'func', 'function', 'define', 'def', 'Python');

INSERT INTO quiz VALUES ('Which of the following is a mutable data type in Python?', 'Tuple', 'List', 'String', 'Frozenset', 'List', 'Python');

INSERT INTO quiz VALUES ('What is the output of print(2 ** 3) in Python?', '5', '6', '8', '9', '8', 'Python');

INSERT INTO quiz VALUES ('Which of the following is used for single-line comments in Python?', '//', '#', '<!-- -->', '/* */', '#', 'Python');

INSERT INTO quiz VALUES ('Which built-in function returns the length of a list in Python?', 'count()', 'length()', 'len()', 'size()', 'len()', 'Python');

INSERT INTO quiz VALUES ('Which Python data type is used to store key-value pairs?', 'List', 'Set', 'Tuple', 'Dictionary', 'Dictionary', 'Python');

INSERT INTO quiz VALUES ('What will be the output of print(type(10/2))?', 'int', 'float', 'double', 'long', 'float', 'Python');

-- SQL questions
INSERT INTO quiz VALUES ('Which SQL command is used to extract data from a database?', 'GET', 'SELECT', 'EXTRACT', 'SHOW', 'SELECT', 'SQL');

INSERT INTO quiz VALUES ('Which of the following is not a SQL constraint?', 'PRIMARY KEY', 'FOREIGN KEY', 'UNIQUE', 'PRINT', 'PRINT', 'SQL');

INSERT INTO quiz VALUES ('Which SQL clause is used to filter records?', 'GROUP BY', 'ORDER BY', 'WHERE', 'HAVING', 'WHERE', 'SQL');

INSERT INTO quiz VALUES ('What does DML stand for in SQL?', 'Data Model Language', 'Data Manipulation Language', 'Database Management Language', 'Data Modification Logic', 'Data Manipulation Language', 'SQL');

INSERT INTO quiz VALUES ('Which SQL function is used to count the number of rows?', 'COUNT()', 'SUM()', 'TOTAL()', 'ROWCOUNT()', 'COUNT()', 'SQL');

INSERT INTO quiz VALUES ('Which of the following is used to remove a table from a database?', 'DELETE', 'REMOVE', 'DROP', 'CLEAR', 'DROP', 'SQL');

INSERT INTO quiz VALUES ('Which SQL keyword sorts the result set in ascending order by default?', 'SORT', 'ORDER BY', 'GROUP BY', 'FILTER', 'ORDER BY', 'SQL');

-- C questions 
INSERT INTO quiz VALUES ('Who is the father of C programming language?', 'James Gosling', 'Bjarne Stroustrup', 'Dennis Ritchie', 'Guido van Rossum', 'Dennis Ritchie', 'C');

INSERT INTO quiz VALUES ('Which of the following is a valid C data type?', 'number', 'integer', 'int', 'digit', 'int', 'C');

INSERT INTO quiz VALUES ('Which operator is used to access value at an address in C?', '&', '*', '->', '%', '*', 'C');

INSERT INTO quiz VALUES ('What is the default return type of a C function if not specified?', 'int', 'void', 'float', 'char', 'int', 'C');

INSERT INTO quiz VALUES ('Which function is used to print output in C?', 'println()', 'echo()', 'printf()', 'cout', 'printf()', 'C');

INSERT INTO quiz VALUES ('What is the size of an int in C (generally on 32-bit system)?', '1 byte', '2 bytes', '4 bytes', '8 bytes', '4 bytes', 'C');

INSERT INTO quiz VALUES ('Which header file is required for printf() and scanf() in C?', 'stdlib.h', 'stdio.h', 'string.h', 'math.h', 'stdio.h', 'C');

INSERT INTO quiz VALUES ('Which of the following is not a loop in C?', 'for', 'while', 'repeat-until', 'do-while', 'repeat-until', 'C');

-- Java questions 
INSERT INTO quiz VALUES ('Who developed Java programming language?', 'Dennis Ritchie', 'James Gosling', 'Bjarne Stroustrup', 'Guido van Rossum', 'James Gosling', 'Java');

INSERT INTO quiz VALUES ('Which of these is not a Java feature?', 'Object-oriented', 'Portable', 'Pointer arithmetic', 'Platform-independent', 'Pointer arithmetic', 'Java');

INSERT INTO quiz VALUES ('Which method is the entry point of a Java program?', 'start()', 'main()', 'run()', 'init()', 'main()', 'Java');
 
INSERT INTO quiz VALUES ('Which keyword is used to inherit a class in Java?', 'implements', 'extends', 'inherit', 'super', 'extends', 'Java');

INSERT INTO quiz VALUES ('Which of the following is a wrapper class in Java?', 'int', 'float', 'Integer', 'double', 'Integer', 'Java');

INSERT INTO quiz VALUES ('Which of these is not a Java access modifier?', 'public', 'private', 'protected', 'friendly', 'friendly', 'Java');

INSERT INTO quiz VALUES ('Which exception is thrown when dividing a number by zero in Java?', 'IOException', 'NullPointerException', 'ArithmeticException', 'NumberFormatException', 'ArithmeticException', 'Java');

INSERT INTO quiz VALUES ('Which keyword is used to create an object in Java?', 'new', 'create', 'object', 'construct', 'new', 'Java');

--python questions

INSERT INTO quiz VALUES ('Which keyword stops a loop in Python?', 'stop', 'break', 'exit', 'end', 'break', 'Python');

INSERT INTO quiz VALUES ('Which function converts string to int?', 'str()', 'float()', 'int()', 'input()', 'int()', 'Python');

INSERT INTO quiz VALUES ('Which operator checks identity?', '==', '=', 'is', '===', 'is', 'Python');

INSERT INTO quiz VALUES ('Which keyword skips iteration?', 'skip', 'continue', 'pass', 'next', 'continue', 'Python');

INSERT INTO quiz VALUES ('Which collection allows duplicates?', 'Set', 'List', 'Tuple', 'Dict', 'List', 'Python');

INSERT INTO quiz VALUES ('Which module handles math functions?', 'calc', 'math', 'numbers', 'random', 'math', 'Python');

INSERT INTO quiz VALUES ('Which keyword defines class?', 'define', 'struct', 'class', 'object', 'class', 'Python');

INSERT INTO quiz VALUES ('Which function reads input?', 'read()', 'input()', 'scan()', 'get()', 'input()', 'Python');

INSERT INTO quiz VALUES ('Which type stores True/False?', 'int', 'bool', 'str', 'float', 'bool', 'Python');

INSERT INTO quiz VALUES ('Which symbol starts comment?', '//', '#', '/* */', '<!--', '#', 'Python');

INSERT INTO quiz VALUES ('Which keyword is used to define a generator in Python?', 'gen', 'yield', 'return', 'lambda', 'yield', 'Python');

INSERT INTO quiz VALUES ('Which function sorts a list?', 'order()', 'sort()', 'arrange()', 'sortedlist()', 'sort()', 'Python');

INSERT INTO quiz VALUES ('Which keyword is used to create anonymous functions?', 'func', 'lambda', 'def', 'anon', 'lambda', 'Python');

INSERT INTO quiz VALUES ('Which operator is used for floor division?', '/', '//', '%', '**', '//', 'Python');

INSERT INTO quiz VALUES ('Which function returns ASCII value?', 'ascii()', 'ord()', 'char()', 'val()', 'ord()', 'Python');

INSERT INTO quiz VALUES ('Which keyword deletes a variable?', 'remove', 'delete', 'del', 'free', 'del', 'Python');

INSERT INTO quiz VALUES ('Which method adds element to list?', 'add()', 'append()', 'insert()', 'push()', 'append()', 'Python');

INSERT INTO quiz VALUES ('Which module generates random numbers?', 'math', 'random', 'numbers', 'calc', 'random', 'Python');

INSERT INTO quiz VALUES ('Which keyword is used to handle errors?', 'catch', 'error', 'try', 'handle', 'try', 'Python');

INSERT INTO quiz VALUES ('Which function checks iterable length?', 'size()', 'count()', 'len()', 'length()', 'len()', 'Python');

INSERT INTO quiz VALUES ('Which keyword is used to exit a function?', 'stop', 'exit', 'return', 'break', 'return', 'Python');

INSERT INTO quiz VALUES ('Which built-in function returns maximum value?', 'max()', 'high()', 'top()', 'large()', 'max()', 'Python');

INSERT INTO quiz VALUES ('Which method removes last element from list?', 'remove()', 'delete()', 'pop()', 'cut()', 'pop()', 'Python');

INSERT INTO quiz VALUES ('Which function converts integer to string?', 'str()', 'int()', 'text()', 'string()', 'str()', 'Python');

INSERT INTO quiz VALUES ('Which keyword is used to create a virtual environment?', 'env', 'venv', 'virtual', 'pyenv', 'venv', 'Python');

INSERT INTO quiz VALUES ('Which operator checks equality?', '=', '==', '!=', '===', '==', 'Python');

INSERT INTO quiz VALUES ('Which function rounds a number?', 'round()', 'floor()', 'ceil()', 'int()', 'round()', 'Python');

INSERT INTO quiz VALUES ('Which module is used for date and time?', 'time', 'calendar', 'datetime', 'clock', 'datetime', 'Python');

INSERT INTO quiz VALUES ('Which keyword is used to raise exceptions?', 'throw', 'raise', 'except', 'error', 'raise', 'Python');

INSERT INTO quiz VALUES ('Which function returns minimum value?', 'min()', 'low()', 'small()', 'bottom()', 'min()', 'Python');

INSERT INTO quiz VALUES ('Which function returns sum of iterable?', 'add()', 'sum()', 'total()', 'plus()', 'sum()', 'Python');

INSERT INTO quiz VALUES ('Which keyword defines decorator?', '@', 'decorator', 'wrap', 'def', '@', 'Python');

INSERT INTO quiz VALUES ('Which function checks all true?', 'any()', 'check()', 'all()', 'true()', 'all()', 'Python');

INSERT INTO quiz VALUES ('Which function checks any true?', 'all()', 'any()', 'exists()', 'one()', 'any()', 'Python');

INSERT INTO quiz VALUES ('Which keyword defines coroutine?', 'async', 'await', 'yield', 'thread', 'async', 'Python');

INSERT INTO quiz VALUES ('Which function returns absolute value?', 'abs()', 'fabs()', 'absolute()', 'math()', 'abs()', 'Python');

INSERT INTO quiz VALUES ('Which method clears list?', 'remove()', 'clear()', 'delete()', 'reset()', 'clear()', 'Python');

INSERT INTO quiz VALUES ('Which operator is walrus?', '=', ':=', '==', '=>', ':=', 'Python');

INSERT INTO quiz VALUES ('Which function reverses list?', 'reverse()', 'invert()', 'flip()', 'rev()', 'reverse()', 'Python');

INSERT INTO quiz VALUES ('Which module handles regex?', 'pattern', 'regex', 're', 'match', 're', 'Python');

INSERT INTO quiz VALUES ('Which function converts list to tuple?', 'list()', 'tuple()', 'set()', 'dict()', 'tuple()', 'Python');

INSERT INTO quiz VALUES ('Which keyword is used to define static method?', 'static', '@staticmethod', '@class', '@method', '@staticmethod', 'Python');

INSERT INTO quiz VALUES ('Which function returns memory address?', 'id()', 'addr()', 'ref()', 'mem()', 'id()', 'Python');

INSERT INTO quiz VALUES ('Which keyword defines exception handling block?', 'catch', 'try', 'error', 'handle', 'try', 'Python');

INSERT INTO quiz VALUES ('Which function zips iterables?', 'merge()', 'zip()', 'pair()', 'join()', 'zip()', 'Python');

INSERT INTO quiz VALUES ('Which keyword is used for inheritance?', 'inherits', 'extends', 'super', 'class', 'class', 'Python');

INSERT INTO quiz VALUES ('Which function converts to binary?', 'bin()', 'hex()', 'oct()', 'int()', 'bin()', 'Python');

INSERT INTO quiz VALUES ('Which method removes specific list item?', 'pop()', 'delete()', 'remove()', 'cut()', 'remove()', 'Python');

INSERT INTO quiz VALUES ('Which keyword creates context manager?', 'using', 'with', 'open', 'manage', 'with', 'Python');

INSERT INTO quiz VALUES ('Which operator unpacks arguments?', '*', '**', '&', '@', '*', 'Python');

INSERT INTO quiz VALUES ('Which function returns sorted copy?', 'sort()', 'sorted()', 'order()', 'arrange()', 'sorted()', 'Python');

INSERT INTO quiz VALUES ('Which module supports JSON?', 'json', 'pickle', 'csv', 'xml', 'json', 'Python');

INSERT INTO quiz VALUES ('Which function reads file content?', 'read()', 'open()', 'load()', 'get()', 'read()', 'Python');

--sql questions

INSERT INTO quiz VALUES ('Which command truncates table?', 'DELETE', 'DROP', 'TRUNCATE', 'CLEAR', 'TRUNCATE', 'SQL');

INSERT INTO quiz VALUES ('Which SQL object stores compiled code?', 'VIEW', 'TRIGGER', 'PROCEDURE', 'INDEX', 'PROCEDURE', 'SQL');

INSERT INTO quiz VALUES ('Which join returns left matches?', 'INNER', 'LEFT', 'RIGHT', 'FULL', 'LEFT', 'SQL');

INSERT INTO quiz VALUES ('Which function converts to uppercase?', 'UPPER()', 'CAP()', 'BIG()', 'TOP()', 'UPPER()', 'SQL');

INSERT INTO quiz VALUES ('Which clause restricts rows?', 'WHERE', 'GROUP BY', 'HAVING', 'ORDER BY', 'WHERE', 'SQL');

INSERT INTO quiz VALUES ('Which keyword creates function?', 'MAKE', 'CREATE FUNCTION', 'NEW FUNCTION', 'ADD FUNCTION', 'CREATE FUNCTION', 'SQL');

INSERT INTO quiz VALUES ('Which SQL command removes view?', 'DELETE', 'DROP VIEW', 'REMOVE', 'CLEAR', 'DROP VIEW', 'SQL');

INSERT INTO quiz VALUES ('Which constraint checks condition?', 'UNIQUE', 'CHECK', 'FOREIGN KEY', 'PRIMARY KEY', 'CHECK', 'SQL');

INSERT INTO quiz VALUES ('Which function returns current user?', 'USER()', 'CURRENT_USER', 'LOGIN()', 'WHO()', 'CURRENT_USER', 'SQL');

INSERT INTO quiz VALUES ('Which join avoids duplicates?', 'INNER', 'LEFT', 'RIGHT', 'UNION', 'UNION', 'SQL');

INSERT INTO quiz VALUES ('Which SQL keyword commits transaction?', 'SAVE', 'END', 'COMMIT', 'APPLY', 'COMMIT', 'SQL');

INSERT INTO quiz VALUES ('Which command rolls back transaction?', 'UNDO', 'ROLLBACK', 'CANCEL', 'REVERT', 'ROLLBACK', 'SQL');

INSERT INTO quiz VALUES ('Which function returns row count?', 'COUNT()', 'ROWS()', 'LEN()', 'TOTAL()', 'COUNT()', 'SQL');

INSERT INTO quiz VALUES ('Which command renames a table?', 'CHANGE', 'ALTER', 'RENAME', 'MODIFY', 'ALTER', 'SQL');

INSERT INTO quiz VALUES ('Which clause is used to remove duplicates?', 'UNIQUE', 'DISTINCT', 'FILTER', 'GROUP', 'DISTINCT', 'SQL');

INSERT INTO quiz VALUES ('Which SQL keyword adds condition?', 'FILTER', 'WHERE', 'CHECK', 'ON', 'WHERE', 'SQL');

INSERT INTO quiz VALUES ('Which function returns average value?', 'AVG()', 'MEAN()', 'SUM()', 'COUNT()', 'AVG()', 'SQL');

INSERT INTO quiz VALUES ('Which SQL command removes column?', 'DELETE', 'DROP', 'ALTER', 'REMOVE', 'ALTER', 'SQL');

INSERT INTO quiz VALUES ('Which join returns all matching and non-matching rows?', 'INNER', 'LEFT', 'RIGHT', 'FULL', 'FULL', 'SQL');

INSERT INTO quiz VALUES ('Which SQL command creates view?', 'MAKE VIEW', 'ADD VIEW', 'CREATE VIEW', 'NEW VIEW', 'CREATE VIEW', 'SQL');

INSERT INTO quiz VALUES ('Which clause limits result rows?', 'TOP', 'LIMIT', 'ROWNUM', 'FETCH', 'TOP', 'SQL');

INSERT INTO quiz VALUES ('Which keyword enforces condition?', 'CHECK', 'RULE', 'VERIFY', 'ASSERT', 'CHECK', 'SQL');

INSERT INTO quiz VALUES ('Which command modifies table structure?', 'UPDATE', 'ALTER', 'CHANGE', 'MODIFY', 'ALTER', 'SQL');

INSERT INTO quiz VALUES ('Which command adds data?', 'INSERT', 'ADD', 'UPDATE', 'APPEND', 'INSERT', 'SQL');

INSERT INTO quiz VALUES ('Which key avoids duplicates?', 'PRIMARY', 'FOREIGN', 'UNIQUE', 'CHECK', 'UNIQUE', 'SQL');

INSERT INTO quiz VALUES ('Which clause sorts data?', 'SORT', 'ORDER BY', 'GROUP BY', 'FILTER', 'ORDER BY', 'SQL');

INSERT INTO quiz VALUES ('Which join returns all rows?', 'INNER', 'LEFT', 'RIGHT', 'FULL', 'FULL', 'SQL');

INSERT INTO quiz VALUES ('Which command deletes rows?', 'REMOVE', 'DELETE', 'DROP', 'CLEAR', 'DELETE', 'SQL');

INSERT INTO quiz VALUES ('Which command creates table?', 'MAKE', 'ADD', 'CREATE', 'NEW', 'CREATE', 'SQL');

INSERT INTO quiz VALUES ('Which constraint avoids NULL?', 'CHECK', 'NOT NULL', 'UNIQUE', 'KEY', 'NOT NULL', 'SQL');

INSERT INTO quiz VALUES ('Which function returns max?', 'MAX()', 'TOP()', 'HIGH()', 'UPPER()', 'MAX()', 'SQL');

INSERT INTO quiz VALUES ('Which clause groups rows?', 'WHERE', 'GROUP BY', 'ORDER BY', 'HAVING', 'GROUP BY', 'SQL');

INSERT INTO quiz VALUES ('Which SQL command removes a database?', 'DELETE', 'DROP DATABASE', 'REMOVE', 'CLEAR', 'DROP DATABASE', 'SQL');

INSERT INTO quiz VALUES ('Which constraint enforces referential integrity?', 'PRIMARY KEY', 'UNIQUE', 'FOREIGN KEY', 'CHECK', 'FOREIGN KEY', 'SQL');

INSERT INTO quiz VALUES ('Which clause is used with aggregate functions?', 'WHERE', 'HAVING', 'GROUP BY', 'ORDER BY', 'HAVING', 'SQL');

INSERT INTO quiz VALUES ('Which SQL function returns minimum value?', 'LOW()', 'MIN()', 'SMALL()', 'BOTTOM()', 'MIN()', 'SQL');

INSERT INTO quiz VALUES ('Which join returns unmatched left rows?', 'INNER JOIN', 'LEFT JOIN', 'RIGHT JOIN', 'FULL JOIN', 'LEFT JOIN', 'SQL');

INSERT INTO quiz VALUES ('Which keyword is used to rename a table?', 'CHANGE', 'ALTER', 'RENAME', 'MODIFY', 'ALTER', 'SQL');

INSERT INTO quiz VALUES ('Which command adds a column?', 'INSERT', 'UPDATE', 'ALTER', 'MODIFY', 'ALTER', 'SQL');

INSERT INTO quiz VALUES ('Which function returns current date?', 'SYSDATE()', 'GETDATE()', 'NOW()', 'CURDATE()', 'GETDATE()', 'SQL');

INSERT INTO quiz VALUES ('Which keyword limits rows in SQL Server?', 'LIMIT', 'TOP', 'ROWNUM', 'FETCH', 'TOP', 'SQL');

INSERT INTO quiz VALUES ('Which SQL command creates index?', 'MAKE INDEX', 'ADD INDEX', 'CREATE INDEX', 'NEW INDEX', 'CREATE INDEX', 'SQL');

INSERT INTO quiz VALUES ('Which command backs up database?', 'SAVE', 'BACKUP DATABASE', 'EXPORT', 'COPY', 'BACKUP DATABASE', 'SQL');

INSERT INTO quiz VALUES ('Which index is fastest for range queries?', 'NONCLUSTERED', 'CLUSTERED', 'UNIQUE', 'HASH', 'CLUSTERED', 'SQL');

INSERT INTO quiz VALUES ('Which object runs automatically?', 'VIEW', 'TRIGGER', 'INDEX', 'JOIN', 'TRIGGER', 'SQL');

INSERT INTO quiz VALUES ('Which keyword deletes duplicates?', 'UNIQUE', 'DISTINCT', 'REMOVE', 'FILTER', 'DISTINCT', 'SQL');

INSERT INTO quiz VALUES ('Which function returns string length?', 'COUNT()', 'LEN()', 'SIZE()', 'LENGTH()', 'LEN()', 'SQL');

INSERT INTO quiz VALUES ('Which command adds constraint?', 'ADD', 'ALTER', 'CREATE', 'INSERT', 'ALTER', 'SQL');

INSERT INTO quiz VALUES ('Which SQL object stores procedure?', 'FUNCTION', 'TRIGGER', 'PROCEDURE', 'VIEW', 'PROCEDURE', 'SQL');

INSERT INTO quiz VALUES ('Which join returns unmatched right rows?', 'LEFT', 'RIGHT', 'INNER', 'FULL', 'RIGHT', 'SQL');

INSERT INTO quiz VALUES ('Which keyword removes index?', 'DROP INDEX', 'DELETE INDEX', 'REMOVE INDEX', 'CLEAR INDEX', 'DROP INDEX', 'SQL');

INSERT INTO quiz VALUES ('Which clause limits results?', 'LIMIT', 'TOP', 'FETCH', 'ROWNUM', 'TOP', 'SQL');

--c questions

INSERT INTO quiz VALUES ('Which operator increments value by 1?', '+', '++', '--', '+=', '++', 'C');

INSERT INTO quiz VALUES ('Which function concatenates strings?', 'strcat()', 'strcpy()', 'strcmp()', 'strlen()', 'strcat()', 'C');

INSERT INTO quiz VALUES ('Which header file defines exit()?', 'stdio.h', 'stdlib.h', 'string.h', 'math.h', 'stdlib.h', 'C');

INSERT INTO quiz VALUES ('Which loop checks condition last?', 'for', 'while', 'do-while', 'repeat', 'do-while', 'C');

INSERT INTO quiz VALUES ('Which keyword skips remaining loop?', 'break', 'continue', 'skip', 'exit', 'continue', 'C');

INSERT INTO quiz VALUES ('Which function allocates memory dynamically?', 'malloc()', 'alloc()', 'new()', 'create()', 'malloc()', 'C');

INSERT INTO quiz VALUES ('Which operator performs bitwise OR?', '|', '||', '&', '&&', '|', 'C');

INSERT INTO quiz VALUES ('Which function reads a character?', 'getchar()', 'scanf()', 'input()', 'read()', 'getchar()', 'C');

INSERT INTO quiz VALUES ('Which data type stores long integer?', 'int', 'short', 'long', 'float', 'long', 'C');

INSERT INTO quiz VALUES ('Which keyword defines macro?', '#define', 'const', 'static', 'final', '#define', 'C');

INSERT INTO quiz VALUES ('Which operator checks not equal?', '!=', '==', '<>', '=', '!=', 'C');

INSERT INTO quiz VALUES ('Which header supports time functions?', 'time.h', 'stdio.h', 'math.h', 'stdlib.h', 'time.h', 'C');

INSERT INTO quiz VALUES ('Which keyword is used to include header file?', '#include', 'import', 'using', 'require', '#include', 'C');

INSERT INTO quiz VALUES ('Which operator is used for modulus?', '%', '/', '*', '+', '%', 'C');

INSERT INTO quiz VALUES ('Which data type stores whole numbers?', 'float', 'double', 'int', 'char', 'int', 'C');

INSERT INTO quiz VALUES ('Which keyword jumps to label?', 'goto', 'break', 'continue', 'exit', 'goto', 'C');

INSERT INTO quiz VALUES ('Which function compares strings?', 'strcmp()', 'strcompare()', 'compare()', 'stringcmp()', 'strcmp()', 'C');

INSERT INTO quiz VALUES ('Which header file supports string functions?', 'stdio.h', 'stdlib.h', 'string.h', 'math.h', 'string.h', 'C');

INSERT INTO quiz VALUES ('Which keyword prevents modification?', 'static', 'final', 'const', 'fixed', 'const', 'C');

INSERT INTO quiz VALUES ('Which operator is logical NOT?', '!', '~', '^', '&&', '!', 'C');

INSERT INTO quiz VALUES ('Which function clears buffer?', 'flush()', 'clear()', 'fflush()', 'reset()', 'fflush()', 'C');

INSERT INTO quiz VALUES ('Which keyword exits loop iteration?', 'exit', 'break', 'continue', 'stop', 'continue', 'C');

INSERT INTO quiz VALUES ('Which keyword defines constant?', '#define', 'const', 'static', 'final', '#define', 'C');

INSERT INTO quiz VALUES ('Which operator increments?', '+', '++', '--', '+=', '++', 'C');

INSERT INTO quiz VALUES ('Which type stores decimal?', 'int', 'float', 'char', 'double', 'float', 'C');

INSERT INTO quiz VALUES ('Which loop runs once?', 'for', 'while', 'do-while', 'repeat', 'do-while', 'C');

INSERT INTO quiz VALUES ('Which header supports malloc?', 'stdio.h', 'stdlib.h', 'math.h', 'string.h', 'stdlib.h', 'C');

INSERT INTO quiz VALUES ('Which operator accesses struct?', '.', '->', '*', '&', '.', 'C');

INSERT INTO quiz VALUES ('Which function exits program?', 'stop()', 'exit()', 'end()', 'close()', 'exit()', 'C');

INSERT INTO quiz VALUES ('Which symbol ends statement?', '.', ',', ':', ';', ';', 'C');

INSERT INTO quiz VALUES ('Which type stores char?', 'int', 'char', 'float', 'double', 'char', 'C');

INSERT INTO quiz VALUES ('Which function reads input?', 'input()', 'scanf()', 'read()', 'get()', 'scanf()', 'C');

INSERT INTO quiz VALUES ('Which keyword is used for conditional branching?', 'if', 'switch', 'case', 'goto', 'if', 'C');

INSERT INTO quiz VALUES ('Which operator compares equality?', '=', '==', '!=', '===', '==', 'C');

INSERT INTO quiz VALUES ('Which data type stores double precision?', 'float', 'double', 'int', 'long', 'double', 'C');

INSERT INTO quiz VALUES ('Which function calculates string length?', 'strlen()', 'length()', 'strsize()', 'size()', 'strlen()', 'C');

INSERT INTO quiz VALUES ('Which keyword ends loop execution?', 'exit', 'stop', 'break', 'end', 'break', 'C');

INSERT INTO quiz VALUES ('Which operator is used for OR?', '|', '||', '&', '&&', '||', 'C');

INSERT INTO quiz VALUES ('Which header file contains strlen?', 'stdio.h', 'stdlib.h', 'string.h', 'math.h', 'string.h', 'C');

INSERT INTO quiz VALUES ('Which keyword declares function?', 'func', 'define', 'return', 'void', 'void', 'C');

INSERT INTO quiz VALUES ('Which function allocates memory?', 'malloc()', 'alloc()', 'new()', 'create()', 'malloc()', 'C');

INSERT INTO quiz VALUES ('Which operator accesses pointer structure?', '.', '*', '->', '&', '->', 'C');

INSERT INTO quiz VALUES ('Which keyword declares array?', 'array', 'int', 'list', 'var', 'int', 'C');

INSERT INTO quiz VALUES ('Which function copies string?', 'strcpy()', 'strcmp()', 'strlen()', 'strcat()', 'strcpy()', 'C');

INSERT INTO quiz VALUES ('Which operator shifts bits left?', '<<', '>>', '&', '|', '<<', 'C');

INSERT INTO quiz VALUES ('Which loop is entry-controlled?', 'for', 'do-while', 'repeat', 'foreach', 'for', 'C');

INSERT INTO quiz VALUES ('Which keyword declares pointer?', 'ptr', '*', '&', 'pointer', '*', 'C');

INSERT INTO quiz VALUES ('Which function opens file?', 'fopen()', 'open()', 'file()', 'read()', 'fopen()', 'C');

INSERT INTO quiz VALUES ('Which operator compares less?', '<', '>', '==', '!=', '<', 'C');

INSERT INTO quiz VALUES ('Which header handles math?', 'math.h', 'stdio.h', 'stdlib.h', 'string.h', 'math.h', 'C');

INSERT INTO quiz VALUES ('Which function closes file?', 'close()', 'fclose()', 'end()', 'stop()', 'fclose()', 'C');

INSERT INTO quiz VALUES ('Which keyword exits switch?', 'break', 'exit', 'stop', 'return', 'break', 'C');

--java questions

INSERT INTO quiz VALUES ('Which keyword creates object?', 'object', 'new', 'create', 'class', 'new', 'Java');

INSERT INTO quiz VALUES ('Which method starts program?', 'run()', 'main()', 'start()', 'init()', 'main()', 'Java');

INSERT INTO quiz VALUES ('Which keyword refers current object?', 'self', 'this', 'super', 'current', 'this', 'Java');

INSERT INTO quiz VALUES ('Which collection avoids duplicates?', 'List', 'Set', 'Map', 'Queue', 'Set', 'Java');

INSERT INTO quiz VALUES ('Which keyword prevents inheritance?', 'static', 'final', 'const', 'private', 'final', 'Java');

INSERT INTO quiz VALUES ('Which type stores true/false?', 'int', 'boolean', 'bit', 'char', 'boolean', 'Java');

INSERT INTO quiz VALUES ('Which loop runs once?', 'for', 'while', 'do-while', 'foreach', 'do-while', 'Java');

INSERT INTO quiz VALUES ('Which package has Scanner?', 'java.io', 'java.util', 'java.lang', 'java.sql', 'java.util', 'Java');

INSERT INTO quiz VALUES ('Which exception divide by zero?', 'IO', 'Null', 'Arithmetic', 'Class', 'Arithmetic', 'Java');

INSERT INTO quiz VALUES ('Which keyword inherits class?', 'implements', 'extends', 'inherits', 'super', 'extends', 'Java');

INSERT INTO quiz VALUES ('Which keyword is used to define a package?', 'import', 'package', 'module', 'include', 'package', 'Java');

INSERT INTO quiz VALUES ('Which keyword is used to inherit interface?', 'extends', 'implements', 'inherits', 'super', 'implements', 'Java');

INSERT INTO quiz VALUES ('Which data type stores single character?', 'String', 'char', 'Character', 'text', 'char', 'Java');

INSERT INTO quiz VALUES ('Which keyword is used for exception handling?', 'catch', 'throw', 'try', 'error', 'try', 'Java');

INSERT INTO quiz VALUES ('Which keyword is used to call parent constructor?', 'this', 'super', 'parent', 'base', 'super', 'Java');

INSERT INTO quiz VALUES ('Which collection maintains insertion order?', 'Set', 'HashSet', 'ArrayList', 'TreeSet', 'ArrayList', 'Java');

INSERT INTO quiz VALUES ('Which keyword makes variable constant?', 'final', 'static', 'const', 'private', 'final', 'Java');

INSERT INTO quiz VALUES ('Which JVM method runs garbage collector?', 'gc()', 'run()', 'collect()', 'clean()', 'gc()', 'Java');

INSERT INTO quiz VALUES ('Which operator compares objects?', '==', 'equals()', 'compare()', 'match()', 'equals()', 'Java');

INSERT INTO quiz VALUES ('Which stream class is used for input?', 'OutputStream', 'InputStream', 'Reader', 'Writer', 'InputStream', 'Java');

INSERT INTO quiz VALUES ('Which keyword is used to import packages?', 'include', 'using', 'import', 'require', 'import', 'Java');

INSERT INTO quiz VALUES ('Which keyword is used for method overriding?', 'override', 'extends', 'super', '@Override', '@Override', 'Java');

INSERT INTO quiz VALUES ('Which access modifier is default?', 'public', 'private', 'protected', 'no keyword', 'no keyword', 'Java');

INSERT INTO quiz VALUES ('Which collection allows key-value pairs?', 'List', 'Set', 'Map', 'Queue', 'Map', 'Java');

INSERT INTO quiz VALUES ('Which exception occurs for null object?', 'IOException', 'ArithmeticException', 'NullPointerException', 'ClassException', 'NullPointerException', 'Java');

INSERT INTO quiz VALUES ('Which keyword stops method execution?', 'exit', 'break', 'return', 'stop', 'return', 'Java');

INSERT INTO quiz VALUES ('Which keyword is used to define interface?', 'interface', 'class', 'implements', 'extends', 'interface', 'Java');

INSERT INTO quiz VALUES ('Which loop iterates through collections?', 'for', 'while', 'foreach', 'do-while', 'foreach', 'Java');

INSERT INTO quiz VALUES ('Which class converts string to integer?', 'Integer', 'String', 'Parse', 'Convert', 'Integer', 'Java');

INSERT INTO quiz VALUES ('Which JVM component loads classes?', 'Interpreter', 'Compiler', 'ClassLoader', 'Executor', 'ClassLoader', 'Java');

INSERT INTO quiz VALUES ('Which keyword defines abstract class?', 'abstract', 'interface', 'virtual', 'base', 'abstract', 'Java');

INSERT INTO quiz VALUES ('Which class stores key-value?', 'List', 'Set', 'Map', 'Queue', 'Map', 'Java');

INSERT INTO quiz VALUES ('Which keyword handles multiple inheritance?', 'extends', 'implements', 'inherit', 'super', 'implements', 'Java');

INSERT INTO quiz VALUES ('Which exception is unchecked?', 'IOException', 'SQLException', 'RuntimeException', 'FileNotFound', 'RuntimeException', 'Java');

INSERT INTO quiz VALUES ('Which class formats output?', 'Formatter', 'Scanner', 'Print', 'Output', 'Formatter', 'Java');

INSERT INTO quiz VALUES ('Which keyword prevents override?', 'static', 'final', 'private', 'sealed', 'final', 'Java');

INSERT INTO quiz VALUES ('Which interface enables threading?', 'Runnable', 'Callable', 'Serializable', 'Cloneable', 'Runnable', 'Java');

INSERT INTO quiz VALUES ('Which stream writes data?', 'InputStream', 'OutputStream', 'Reader', 'Scanner', 'OutputStream', 'Java');

INSERT INTO quiz VALUES ('Which keyword defines constant?', 'static', 'final', 'const', 'fixed', 'final', 'Java');

INSERT INTO quiz VALUES ('Which loop is enhanced for?', 'foreach', 'for-each', 'while', 'do', 'for-each', 'Java');

INSERT INTO quiz VALUES ('Which keyword defines final variable?', 'static', 'final', 'const', 'fixed', 'final', 'Java');

INSERT INTO quiz VALUES ('Which class handles exceptions?', 'Error', 'Throwable', 'Exception', 'Catch', 'Exception', 'Java');

INSERT INTO quiz VALUES ('Which keyword creates instance?', 'object', 'new', 'instance', 'class', 'new', 'Java');

INSERT INTO quiz VALUES ('Which interface supports sorting?', 'Comparator', 'Runnable', 'Serializable', 'Iterable', 'Comparator', 'Java');

INSERT INTO quiz VALUES ('Which package supports networking?', 'java.io', 'java.sql', 'java.net', 'java.util', 'java.net', 'Java');

INSERT INTO quiz VALUES ('Which keyword restricts access?', 'private', 'protected', 'public', 'static', 'private', 'Java');

INSERT INTO quiz VALUES ('Which class reads input from console?', 'Scanner', 'Reader', 'Input', 'Console', 'Scanner', 'Java');

INSERT INTO quiz VALUES ('Which keyword defines subclass?', 'extends', 'implements', 'inherits', 'super', 'extends', 'Java');

INSERT INTO quiz VALUES ('Which exception is checked?', 'RuntimeException', 'IOException', 'NullPointerException', 'ArithmeticException', 'IOException', 'Java');

INSERT INTO quiz VALUES ('Which keyword calls parent method?', 'this', 'super', 'parent', 'base', 'super', 'Java');

INSERT INTO quiz VALUES ('Which collection allows duplicates?', 'Set', 'Map', 'List', 'Queue', 'List', 'Java');

INSERT INTO quiz VALUES ('Which JVM component executes bytecode?', 'Compiler', 'Interpreter', 'Loader', 'Executor', 'Interpreter', 'Java');

select * from quiz
select * from scores
