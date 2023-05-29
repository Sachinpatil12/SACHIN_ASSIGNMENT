drop database worker_db;
create database worker_db;
use worker_db;

create table workers 
(
worker_id int not null auto_increment,
First_name varchar(100),
Last_name varchar (100),
Salary int,
joining_date varchar(100),
department varchar(100),
primary key (worker_id)
);

insert into workers (First_name,Last_name,Salary,joining_date,department)
value ('Monika','arora',100000,'2-20-2014', 'HR'),
('nihariak','verma',80000,'6-11-2014 ', 'admin'),
('vishal','singhal',30000,'2-20-2014 ', 'HR'),
('amitabh','singh',500000,'2-20-2014 ', 'admin'),
('vivek','bhati',500000,'6-11-2014 ', 'admin'),
('vipul','diwan',200000,'6-11-2014 ', 'account'),
('satish','kumar',75000,'1-20-2014 ', 'account'),
('geetika','chauhan',90000,'4-11-2014', 'admin');

select * from workers;

-- 1. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending. 
select * from workers order by First_name asc, department desc;

-- 2 .Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table. 
select * from workers where First_name in ('vipul','satish');

-- 3.Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘h’ and contains six alphabets. 
 select * from workers where First_name like '_____h';
 
 -- 4. Write an SQL query to print details of the Workers whose SALARY lies between 1. 
select * from workers where salary > 100000;
 
-- 5. Write an SQL query to show the top 6 records of a table
 select * from workers
 limit 6;
 
 -- 6.Write an SQL query to fetch the departments that have less than five people in them. 
 select department,count(worker_id) as 'name of worker' from workers group by department having count(worker_id)<5;
 
 -- 7.Write an SQL query to show all departments along with the number of people in there. 
select department,count(department) as 'name of worker' from workers group by department;

-- 8. Write an SQL query to print the name of employees having the highest salary in each department. 
 select First_name, salary from workers where salary =(select max(salary) from workers);
 
 
 
 
 --- Question 2: Open school database, then select student table and use following SQL statements.TYPE THE STATEMENT, PRESS ENTER AND NOTE THE OUTPUT 
 
 
 
  drop database school_db;
 create database school_db;
 use school_db; 
 
 create table school
 (
 stdid int not null auto_increment,
 stdname varchar(30),
 sex varchar(30),
 percentage int(2),
 class int(2),
 sec varchar(30),
 streams varchar(30),
 dob varchar(30),
 primary key (stdid)
 );

insert into school(stdname,sex,percentage,class,sec,streams,dob)
value('surekha joshi', 'female',82,12,'A','science','3/8/1998'),
('mahi agrawal', 'female',56,12,'A','commerce','11/23/2008'),
('sanam verma', 'male',59,12,'A','commerce','6/29/2006'),
('ronit kumar', 'male',63,12,'A','commerce','11/5/1997'),
('dipesh pulkit', 'male',78,12,'A','science','14/9/2003'),
('jahanvi puri', 'female',60,12,'A','commerce','11/7/2008'),
('sanam kumar', 'male',23,12,'A','commerce','14/09/2003'),
('sahil saras', 'male',56,12,'A','commerce','11/7/2008'),
('akshara agrawal', 'female',72,12,'A','commerce','10/1/1996'),
('stuti mishra', 'female',39,39,'A','science','11/23/2008'),
('harsh agarwa', 'male',42,12,'A','science','3/8/1998'),
('nikunj agarwal', 'male',49,12,'A','commerce','28/6/1998'),
('akriti saxena', 'female',89,12,'A','science','11/23/2008'),
('tani rastogi', 'female',82,12,'A','science','11/23/2008');


 -- 1 To display all the records form STUDENT table. 
 SELECT * FROM school; ;

-- 2. To display any name and date of birth from the table STUDENT. 
SELECT StdName, DOB FROM school ;

-- 3. To display all students record where percentage is greater of equal to 80 FROM student table.
SELECT * FROM school WHERE percentage >= 80;

-- 4. To display student name, stream and percentage where percentage is more than 80.
select stdname,streams,percentage from school where percentage >80;

-- 5. To display all records of science students whose percentage is more than 75 form student table.
SELECT * from school WHERE streams = "science" AND percentage > 75; 



