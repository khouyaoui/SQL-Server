/*
SCRIPT para crear base de datos Colegio.
dia: 10/07/2018
db to train sql
*/
drop database Colegio;
create database Colegio;
CREATE TABLE dbo.Students  
(  
     Id int IDENTITY(1,1) NOT NULL primary key
    ,FirtName varchar(20) NOT NULL  
    ,LastName varchar(20) NULL  
);

CREATE TABLE dbo.Teachers  
(  
     Id int IDENTITY(1,1) NOT NULL primary key 
    ,FirtName varchar(20) NOT NULL  
    ,LastName varchar(20) NOT NULL  
);

CREATE TABLE dbo.Subjects  
(  
     Id int IDENTITY(1,1) NOT NULL primary key
    ,Name varchar(20) NOT NULL  
);

CREATE TABLE dbo.Courses  
(  
     Id int IDENTITY(1,1) NOT NULL primary key
    ,TeacherID int references dbo.Teachers
    ,SubjectID int references dbo.Subjects 
);

CREATE TABLE dbo.StudentCourses  
(      
     Student_Id int references dbo.Students
    ,Course_Id int references dbo.Courses 
);