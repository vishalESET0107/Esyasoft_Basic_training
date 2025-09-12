use master

create table employees (emp_id int primary key, first_name varchar(50), last_name varchar (50), birth_date date, sex varchar(2), salary int, super_id int, branch_id int, dept_id int)

INSERT INTO employees (emp_id, first_name, last_name, birth_date, sex, salary, super_id, branch_id, dept_id) VALUES
(100, 'david', 'wallace', '1967-11-17', 'M', 250000, NULL, 1, 1),
(101, 'Jan', 'Levinson', '1961-05-11', 'F', 110000, 100, 2, 1),
(102, 'Michael', 'scott', '1964-03-15', 'M', 75000, 100, NULL, 2),
(103, 'joydeep', 'kundu', '2002-05-14', 'M', 400000, 102, NULL, 3),
(104, 'puneet', 'singh', '2002-06-15', 'M', 630000, 102, NULL, 3),
(105, 'pritam', 'suman', '1999-11-05', 'F', 400000, 102, NULL, 3),
(106, 'sandeep_singh', 'kumar', '2002-12-03', 'M', 20000, NULL, 4, 8),
(107, 'pavan', 'madival', '1998-05-07', 'M', 50000, 106, NULL, 5),
(108, 'akash', 'roy', '1966-11-07', 'F', 30000, 106, NULL, 5),
(109, 'abhay', 'kumar', '2001-05-04', 'M', 400000, 102, NULL, 2),
(110, 'oscar', 'Martinez', '1968-07-12', 'M', 62000, 102, NULL, 3),
(111, 'Phyllis', 'Vance', '1962-12-11', 'F', 58000, 102, NULL, 3),
(112, 'Dwight', 'Schrute', '1970-01-20', 'M', 72000, 102, NULL, 2),
(113, 'Merrdith', 'Palmer', '1964-09-19', 'F', 47000, 102, NULL, 2);


select *
from employees

select top 5 * from employees order by salary desc

 select * from employees order by salary desc offset 1 rows fetch next 5 rows only