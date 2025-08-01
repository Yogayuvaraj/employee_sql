 create database Sample
 use Sample
 
 CREATE TABLE Stud(
 reg_no INT PRIMARY KEY,
 name VARCHAR(20) NOT NULL,
 department VARCHAR(40) NOT NULL,
 year INT NOT NULL); 
 
INSERT INTO stud(reg_no,name,department,year)VALUES 
(111,'yxz','cyber',4),
(122,'xxy','AI&DS',3),
(123,'xyz','IT',4),
(130,'abc','CSE',4);

show tables;
describe stud;

select *from stud;

UPDATE stud
SET name='hjk',
department='BCA',
year=3 WHERE reg_no =123;

Insert into Stud(reg_no,name,department,year)
values (145,'sdfg','msc',2);

alter table stud
ADD phone_num varchar(13);
update stud
set phone_num = '9876543219' where reg_no = 123;
update stud
set phone_num = '9876543245' where reg_no = 111;
update stud
set phone_num = '9876543365' where reg_no = 122;
update stud
set phone_num = '9876543876' where reg_no = 130;
update stud
set phone_num = '9876543359' where reg_no = 145;
-----------------------------------------------
select count(*)as tot_student from stud;
select max(year) as max_yr from stud;
select min(year)as min_yr from stud;
select avg(year)as avg_yr from stud;
select department,count(*)as dept_count from stud group by department;
select department,max(year)as max_yr from stud
group by department;
select *from stud
order by year asc;

select *from stud
order by name;

select *from stud
order by department desc;

select upper(department)as dep_upr from stud;

select lower(name)as name_lw from stud;
select upper(name)as name_up from stud;
select left(name,2)as srt from stud;
select name,length(name) as name_ln from stud;
select concat(name,'-',department)as combine from stud;

select name,year,year+1 as nx_yr from  stud;

select reg_no,mod(reg_no,2)as odr from stud;

ALTER TABLE stud
ADD Date_Detail DATE;

update stud set Date_Detail='2021-08-18'where reg_no=111;
update stud set Date_Detail='2022-03-26'where reg_no=122;
update stud set Date_Detail='2023-06-21'where reg_no=123;
update stud set Date_Detail='2024-01-02'where reg_no=130;
update stud set Date_Detail='2025-07-16'where reg_no=145;

select *from stud;

select curdate();
select curtime();

select reg_no,name,year(Date_Detail)as yr from stud;





