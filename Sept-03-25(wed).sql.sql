create schema Task;
use task;
create table employee(
id int,
name varchar(100),
department varchar(50),
salary int,
city varchar(100)
);
select * from employee;

insert into employee(id,name,department,salary,city) values
(1,'Alice','HR',50000,'New York'),
(2,'Bob','IT',70000,'San Deido'),
(3,'Charlie','HR',55000,'New York'),
(4,'David','IT',80000,'Boston'),
(5,'Eva','Finacne',60000,'San Deigo'),
(6,'Frank','IT',75000,'San Jose'),
(7,'Grace','Finance',65000,'New York'),
(8,'Hannah','HR',52000,'Boston');

select department ,count(department)  from employee group by department;

select avg(salary),department from employee group by department;

select salary,name from employee order by salary desc;

select department,name,salary  from employee order by department,salary asc;