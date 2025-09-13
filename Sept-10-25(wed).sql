use sqltasks;


--  STUDENTS TABLE FOR ONLINE COURSE --

CREATE TABLE STUDENTS(
STUDENT_ID INT,
NAME VARCHAR(100),
EMAIL VARCHAR(100),
CITY VARCHAR(50),
JOIN_DATE DECIMAL(10,2)
);

-- COURSE DETAILS TABLE FOR ONLINE COURSES --

CREATE TABLE COURSES(
COURSE_ID INT,
TITLE VARCHAR(100),
CATEGORY VARCHAR(100),
PRICE BIGINT
);

--  ENROLLMENTS DETAILS TABLE FOR ONLINE COURSE --

CREATE TABLE ENROLLMENTS(
ENROLL_ID INT,
STUDENT_ID INT,
COURSE_ID INT,
ENROLL_DATE BIGINT,
STATUS VARCHAR(100));

  --  PAYMENTS TABLE FOR ONLINE COURSE --
  
  CREATE TABLE PAYMENTS(
  PAYMENT_ID INT,
  STUDENT_ID INT,
  AMOUNT BIGINT,
  PAYDATE DECIMAL(10,2));

SELECT * FROM STUDENTS;
SELECT * FROM COURSES;
SELECT * FROM ENROLLMENTS;
SELECT * FROM PAYMENTS;



INSERT INTO STUDENTS (STUDENT_ID,NAME,EMAIL,CITY,JOIN_DATE)VALUE
(101,'Raja','raju@gmail.com','Cuddalore',09);
 


insert into courses value (201,'Java','Development',20000);
insert into courses value (202,'Python','Development',30000);
insert into courses value (203,'Selenium','Testing',25000);

insert into enrollments values
(301,101,201,09,'Success'),
(302,101,202,10,'Pending');  

insert into payments value
(401,101,20000,09);


 INSERT INTO STUDENTS (STUDENT_ID, NAME, EMAIL, CITY, JOIN_DATE)
VALUES
  (102, 'Bala', 'bala@gmail.com', 'Trichy', 10),
  (103, 'Monisha', 'moni12@gmail.com', 'Dindigul', 12),
  (104, 'Deepak', 'deepak23@gmail.com', 'Ariyalur', 13),
  (105, 'Ganesh', 'ganesh@gmail.com', 'Chennai', 8),
  (106, 'Mukesh', 'mukesh56@gmail.com', 'Banglore', 15),
  (107, 'Sai', 'sairam@gmail.com', 'Coimbatore', 20);

-- update the city column from chennai to banglore --

update students set city='Banglore' where city='Chennai';
  
 -- update the price table incresed by 10% --  

UPDATE COURSES
SET PRICE = PRICE * 1.10;

-- update the enrollment to completed a student who finished the course --

update enrollments set status='Completed' where course_id=201;

--  update the email to wrongly entered student --

update students set email='monisha@gmail.com' where name='monisha';

-- delete a student who requested account removal --

delete from students where name='Deepak';

delete from students where student_id='101';

--  delete a specific course in enrollments --

delete from enrollments where course_id=201;


-- add new column (phone number) to students table --

alter table students add Phone_number int;

-- drop the payment table but migrating data to another system --

create table payments_backup as
select* from payments;

select * from payments_backup;

drop table payments;

-- Aggregate functions --
--  Total number of students enrolled in all courses --

select count(student_id),course_id from enrollments  group by course_id;

-- average price of courses by caregories --

select avg(price),category  from courses group by category;

-- highest payment made by any student --

select max(amount),student_id from payments_backup group by student_id;