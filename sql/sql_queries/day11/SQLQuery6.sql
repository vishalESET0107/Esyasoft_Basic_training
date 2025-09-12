use db1


CREATE TABLE Students2024 (ID INT, Name VARCHAR(50));
CREATE TABLE Students2025 (ID INT, Name VARCHAR(50));

INSERT INTO Students2024 VALUES
(1,'Ravi'),(2,'Asha'),(3,'John'),(4,'Meera'),(5,'Kiran'),
(6,'Divya'),(7,'Lokesh'),(8,'Anita'),(9,'Rahul'),(10,'Sneha');

INSERT INTO Students2025 VALUES
(2,'Asha'),(4,'Meera'),(5,'Kiran'),(11,'Prakash'),(12,'Vidya'),
(13,'Neha'),(14,'Manoj'),(15,'Ramesh'),(16,'Lata'),(17,'Akash');






CREATE TABLE Employees (EmpID INT, Name VARCHAR(50), Department VARCHAR(20));

INSERT INTO Employees VALUES 
(1,'Ananya','HR'),(2,'Ravi','IT'),(3,'Meera','Finance'),
(4,'John','IT'),(5,'Divya','Marketing'),(6,'Sneha','Finance'),
(7,'Lokesh','HR'),(8,'Asha','IT'),(9,'Kiran','Finance'),(10,'Rahul','Sales');





CREATE TABLE Projects (ProjectID INT, Name VARCHAR(50), StartDate DATE, EndDate DATE);
INSERT INTO Projects VALUES 
(1,'Bank App','2025-01-01','2025-03-15'),
(2,'E-Commerce','2025-02-10','2025-05-20');





CREATE TABLE Contacts (ID INT, Name VARCHAR(50), Email VARCHAR(50), Phone VARCHAR(20));
INSERT INTO Contacts VALUES
(1,'Ravi','ravi@gmail.com',NULL),
(2,'Asha',NULL,'9876543210'),
(3,'John',NULL,NULL);



select * from Employees

select *  , row_number() over (order by EmpID desc) as popolarity

from Employees

select *  , row_number() over (order by EmpID desc) as popolarity ,rank() over (order by EmpID) as rank_
,dense_rank() over (order by EmpID) as drank_

from Employees

select *  , row_number() over (partition  by gender order by salary) as popolarity
from Employees
--task1

select * from Students2024
union
select * from Students2024

select * from Students2024
union all
select * from Students2024


--task2

select upper(name) from Employees

select len(name) from Employees

select substring(name , 1,3) from Employees

select replace(department ,  'finance' , 'accounts') from Employees

select concat(name ,'_' ,  department) from Employees

--task3

select GETDATE()

select DATEDIFF(startdate , enddate) from Projects


--task4

select cast(123.456 as int)

select convert (varchar(50) ,getdate() , 103) as date_ddmmyyyy


select replace(department , 'it' ,'tech team' ) , replace(department , 'hr' , 'human resourses' ) from Employees









