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
(5,'Eva','Finance',60000,'San Deigo'),
(6,'Frank','IT',75000,'San Jose'),
(7,'Grace','Finance',65000,'New York'),
(8,'Hannah','HR',52000,'Boston');

select * from employee
where name like 'a%';

select name,city from employee where city like 'san%';

select * from employee
where name like '%a';

select count(department), department from employee group by department 
having count(distinct name) >2
 order by avg(salary) desc;