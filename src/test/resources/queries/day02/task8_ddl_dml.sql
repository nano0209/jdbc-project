select * from employees;

/*
 CREATE TABLE tableName(
 colName1 dataType constrains,
 colName2 dataType constrains,
 colName3 dataType constrains,
 colName4 dataType constrains,
 colName5 dataType constrains,
 );
 */

 CREATE TABLE loopteam(
     empId INTEGER primary key, --this can not be null and has to be Unique
     firstName varchar(30) not null, -- can not be null
     jobtitle varchar(20) not null,  -- can not be null
     age INTEGER,                   -- there is no constrains  meaning it cane be null
     salary INTEGER                 -- there is no constrains  meaning it cane be null
 );

select * from LOOPTEAM;
/*
 insert INTO tableName(column1, column2.......)
 VALUES(value1, value2.........)
 */

 insert into loopteam (empId, firstName, jobtitle, age, salary)
 values (1, 'Tom', 'SDET', 30, 125000);

insert into loopteam(empId, firstName, jobtitle, age, salary)
values (2, 'James', 'PO', 30, 12000);

insert into loopteam(empId, firstName, jobtitle, age, salary)
values (3, 'John', 'SM', 40, 110000);

insert into loopteam(empId, firstName, jobtitle, age, salary)
values (4, 'Henry', 'DEV', 40, 140000);

/*
 DELETE FROM table_name
 Where condition
 */

delete from LOOPTEAM where empId = 2;
select * from loopteam;

commit;

-- how to add column of gender
Alter TABLE LOOPTEAM Add gender varchar(20);
select * from LOOPTEAM;

update loopteam
set gender = 'Male';


update loopteam
set gender = 'Female'
where firstName = 'james';


-- how to drop/delete the column
alter table loopteam
drop column gender;

select * from loopteam;


-- How to RENAME Table
alter table loopteam
rename to agileteam;

select * from agileteam;


-- Truncate will remove all the table
-- Truncate table_name

TRUNCATE TABLE agileteam;
select * from agileteam;


-- delete whole table with its structure

drop table agileteam;


















