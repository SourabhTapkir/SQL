CREATE DATABASE college;
USE college;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR(50),
marks INT NOT NULL,
grade VARCHAR(1),
city VARCHAR(20)
);

INSERT INTO student
(rollno, name, marks, grade, city)
VALUES
(101, "anil",78,"C","Pune"),
(102, "bhumika",93,"A","Mumbai"),
(103, "chetan",85,"B","Mumbai"),
(104, "dhruv",96,"A","Delhi"),
(105, "emanuel",12,"F","Delhi"),
(106, "farah",82,"B","Delhi");


SELECT * From Student; 

select city from student;

SELECT DISTINCT city FROM student; /*DISTINCT removes duplicate values*/

SELECT * FROM student WHERE marks>80;

SELECT * FROM student WHERE city = "Mumbai";

SELECT * FROM student where marks>80 AND city = "mumbai"; /*checks both condition for true*/

SELECT * FROM student WHERE marks>80 OR city = "Mumbai"; /*one condition is used to be true*/

SELECT * FROM student WHERE rollno BETWEEN 103 AND 105; /*RAnge between given numbers*/

SELECT * FROM student WHERE city IN ("Mumbai","Pune"); /*matches any values int he list*/

SELECT * FROM student WHERE city NOT IN ("Pune"); /*to negate the given condition */

SELECT * FROM student LIMIT 4; /*displaying specific amount of rows*/

SELECT * FROM student WHERE marks>80 LIMIT 2; /*displaying specific amount of rows here appling some condition on it*/

SELECT * FROM student ORDER BY name ASC;  /*Sorting  data in a ascending order*/

SELECT * FROM student ORDER BY name DESC LIMIT 3;/*Sorting data in a ascending order here applying limit of 3 for displaying*/

SELECT MAX(marks) FROM student; /*Displaying the max marks*/

SELECT MIN(marks) FROM student; /*Displaying the min marks*/

SELECT COUNT(rollno) from student; /*TOtal number of count of rollno*/

SELECT SUM(marks) FROM student; /*sum of all the marks numbers*/

SELECT AVG(marks) FROM student; /*average of all marks numbers*/

SELECT city,COUNT(name)  /*it collects the data from the multiple records and groups the result by one or more columns*/
FROM student
GROUP BY city;

SELECT city,name,COUNT(name) 
FROM student
GROUP BY city,name;

SELECT city,AVG(marks)
FROM student
GROUP BY city;

SELECT city,AVG(marks)  
FROM student
GROUP BY city
ORDER BY city ASC;

SELECT mode,count(customer)
from payment
Group by mode;





















 