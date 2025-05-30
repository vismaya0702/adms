create database school;
use school;
create table student(Name varchar(30) , Student_number int primary key,Class int,Major varchar(20));
create table course(Course_name varchar(40),Course_number varchar(40) primary key,Credit_hours int,Department varchar(30));
create table section(Section_identifier int primary key,Course_number varchar(40),foreign key(Course_number)references course(Course_number),Semester varchar(20),Year int ,Instructor varchar(25));
create table grade_report(Student_number int,foreign key(Student_number)references student(Student_number),Section_identifier int,foreign key(Section_identifier)references section(Section_identifier),Grade varchar(10));
create table prerequisite(Course_number varchar(40),foreign key(Course_number) references course(Course_number),Prerequisite_number varchar(30));
insert into student(Name,Student_number,Class,Major)values("Smith",17,1,"CS"),("Brown",8,2,"CS");
select * from student;
insert into course(Course_name,Course_number,Credit_hours,Department)values("Intro to Computer Science","CS1310",4,"CS"),("Data Structures","CS3320",4,"CS"),("Discrete Mathematics","MATH2410",3,"MATH"),("Database","CS3380",3,"CS");
select * from course;
insert into section(Section_identifier,Course_number,Semester,Year,Instructor)values(85,"MATH2410","Fall",07,"King"),(92,"CS1310","Fall",07,"Anderson"),(102,"CS3320","Spring",08,"Knuth"),(112,"MATH2410","Fall",08,"Chang"),(119,"CS1310","Fall",08,"Anderson"),(135,"CS3380","Fall",08,"Stone");
select * from section;
insert into grade_report(Student_number,Section_identifier,Grade)values(17,112,"B"),(17,119,"C"),(8,85,"A"),(8,92,"A"),(8,102,"B"),(8,135,"A");
select * from grade_report;
insert into prerequisite(Course_number,Prerequisite_number)values("CS3380","CS3320"),("CS3380","MATH2410"),("CS3320","CS1310");
select * from prerequisite;
