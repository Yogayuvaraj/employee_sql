create database Employee
use Employee

create table emp
(emp_id int primary key,
name varchar(20) not null,
department varchar(40) not null,
Experience int not null);

insert into emp(emp_id,name,department,experience)
values(111,'yuvaraj','HR',5),
(112,'rohit','sales',4),
(113,'tamil','exicuter',4),
(114,'john','IT',3);

select *from emp;

update emp
set name = 'david',
department='IT',
experience=3 where emp_id=112;

alter table emp
add salary varchar(10);

update emp set salary='50000' where emp_id=111;
update emp set salary='40000' where emp_id=112;
update emp set salary='40000' where emp_id=113;
update emp set salary='30000' where emp_id=114;
