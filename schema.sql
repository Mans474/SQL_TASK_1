CREATE DATABASE INTERNSHIP;
CREATE TABLE students(
id INT PRIMARY KEY auto_increment,
name VARCHAR(100),
email VARCHAR(100)
);

INSERT INTO students(id,name,email) VALUES(1,'MANSI','mansi13@gmail.com'),
(2,'Shreya','shreya12@gmail.com');
SELECT * FROM students;
use INTERNSHIP;
CREATE TABLE courses
(
course_id INT PRIMARY KEY AUTO_INCREMENT,
course_name VARCHAR(100),
duration VARCHAR(50)
);
CREATE TABLE enrollments
(
enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
student_id INT,
course_id INT,
FOREIGN KEY(student_id) REFERENCES students(id),
FOREIGN KEY(course_id)REFERENCES courses(course_id)
);
INSERT INTO courses(course_id,course_name,duration) VALUES (1,'Web Development','6 Months'),
(2,'Cybersecurity','4 Months');
select * from courses;
INSERT INTO enrollments
(student_id,course_id)
VALUES(1,1),(2,2);
select * from enrollments;