create database taskday36;
CREATE TABLE student (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(255) UNIQUE,
    Gender VARCHAR(255),
    Age INT,
    Contact_Number DOUBLE, 
    Marks INT 
);
Select * from student;
Insert Into student (Name, Gender, Age, Contact_Number, Marks) Values ("Arjun", "Male", 26, 8675756653, 80), ("Sonia", "Female", 25, 9865756654, 90), ("Veer", "Male", 25, 6895756656, 85), ("Lakshmi", "Female", 23, 9878562726, 73), ("Nisha", "Female", 23, 8875177695, 90), ("Ayla", "Female", 22, 6974141877, 60), ("Rishi", "Male", 23, 8762242415, 65);
Drop table student;
Desc student;
DELETE FROM student WHERE Id = 3;
TRUNCATE student;
Select Id, Name, Gender, Age, Contact_Number, Marks from student where Id=1;
Select distinct Gender from student;
Select * from student where Id in (1,2,3,4,5,6,7) order by Name limit 1,2;
Select Id, Name, Gender, Age, Contact_Number, Marks as Marks_Scored from student order by Id;
Select * from student where Name='veer' and Gender='Male';
Select * from student where Name='Ayla' or Age='26';
Select * from student where Id in (1,2);
Select * from student where Id not in (1,2);
Select * from student where Id between 1 and 3;
Select * from student where Gender like '%em%';
Select count(Marks) as Count, sum(Marks) as Sum, Avg(Marks) as Average, min(Marks) as Min, max(Marks) as Max from student;

CREATE TABLE course_details (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Course_Name VARCHAR(255),
    Course_Language VARCHAR(255),
	Course_Fee INT NOT NULL
);
Select * from course_details;
Insert Into course_details (Course_Name, Course_Language, Course_Fee) Values ("Javascript", "Tamil",2000), ("MongoDB", "Tamil",5000), ("C", "English",750), ("C++", "English", 900), ("ReactJS", "English", 5000);

Alter table student Add column CourseId INT;
Alter table student add Foreign key (CourseId) References course_details(Id);
Update student Set CourseId=2 where Id=1;
Update student Set CourseId=3 where Id=2;
Update student Set CourseId=1 where Id=3;
Update student Set CourseId=4 where Id=4;
Update student Set CourseId=2 where Id=5;
Update student Set CourseId=5 where Id=6;
Update student Set CourseId=1 where Id=7;

Select * from student as s INNER JOIN course_details as c ON s.CourseId=c.Id order by s.Id;

Select * from student;
Select * from course_details;