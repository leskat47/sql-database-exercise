PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Student (
first_name VARCHAR(30),
last_name VARCHAR(30),
github VARCHAR(30)
);
INSERT INTO "Student" VALUES('Jane','Hacker','jhacks');
INSERT INTO "Student" VALUES('Sarah','Developer','sdevelops');
CREATE TABLE Projects (
id INTEGER PRIMARY KEY AUTOINCREMENT,
title VARCHAR(30),
description TEXT,
max_grade INTEGER);
INSERT INTO "Projects" VALUES(1,'Markov','Tweets generated from Markov chains',50);
INSERT INTO "Projects" VALUES(2,'Blockly','Programmatic Logic Puzzle Game',10);
CREATE TABLE Grades (
id INTEGER PRIMARY KEY AUTOINCREMENT,
student_github VARCHAR(30),
project_title VARCHAR(30),
grade INTEGER
);
INSERT INTO "Grades" VALUES(1,'jhacks','Markov',10);
INSERT INTO "Grades" VALUES(2,'jhacks','Blockly',2);
INSERT INTO "Grades" VALUES(3,'sdevelops','Blockly',100);
INSERT INTO "Grades" VALUES(4,'sdevelops','Markov',50);
DELETE FROM sqlite_sequence;
INSERT INTO "sqlite_sequence" VALUES('Projects',2);
INSERT INTO "sqlite_sequence" VALUES('Grades',4);
COMMIT;
