select * from employees;

--Creating table
--table name
--columnName dataType constrains

-- crate a table that has a name loopcamp
--columnName: Student_ID | data type is Number | Character length 30 | PK
--columnName: First_Name | data type is String | Character length 30 | can not be null
--columnName: Last_Name | data type is String | Character length 30 | can not be null
--columnName: Batch_NO | data type is Number | can not be null and duplicate
--
create table loopcamp -- we created structure of table DDL
(
    Student_ID INteger Primary key,
    First_Name varchar(30) not null,
    Last_Name  varchar(30)  not null,
    Batch_NO Integer
    );

select * from LOOPCAMP;

--Insert some data into table

insert into loopcamp (Student_ID, First_Name, Last_Name, Batch_NO)
values (1,'Nazakat', 'Hanifayeva', 001);


insert into loopcamp (Student_ID, First_Name, Last_Name, Batch_NO)
values (2,'Ruslan', 'Heybatov', 002);


insert into loopcamp (Student_ID, First_Name, Last_Name, Batch_NO)
values (3,'Natalia', 'Liubchenko', 003);

select * from loopcamp;

--how to update the values for all rows for specific column
update loopcamp
set  BATCH_NO =1;

-- how to delete specific row from table
-- Note: deleting  the row, will not push everything to the beginning starting from 1 for Student_Id
delete from LOOPCAMP
where STUDENT_ID = 1;

select * from LOOPCAMP;

--how to add a new column?
ALTER table LOOPCAMP add gender varchar(20);

update loopcamp
set gender = 'Male'
where FIRST_NAME = 'Ruslan';


update loopcamp
set gender = 'Female'
where FIRST_NAME = 'Natalia';

ALTER table loopcamp add salary integer;

update loopcamp
set salary = 140000;

update loopcamp
set salary = salary + 10000;

select * from loopcamp;
-- how to update the column_Name in the table
--update column: salary to be Annual_salary






