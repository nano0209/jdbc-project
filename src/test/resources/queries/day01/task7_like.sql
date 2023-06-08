select * from EMPLOYEES;

/*
 LIKE
 it works with the same logic from String class for following methods
 starWith, endWith, contains

 % any sequence of character after that
 this
 */

 SELECT * from EMPLOYEES where FIRST_NAME like 'B%';

SELECT * from EMPLOYEES where FIRST_NAME like 'B____';

SELECT * from EMPLOYEES where FIRST_NAME like '__z__';

SELECT * from EMPLOYEES where FIRST_NAME like '%z%';

--Display all records /info whose last name has 5 letter
SELECT * from EMPLOYEES where LAST_NAME like '_____';

select * from  EMPLOYEES where FIRST_NAME like'_a%';

-- display all employees whose firstname ends with l letter
select * from  EMPLOYEES where FIRST_NAME like'%l';


select * from  JOBS where JOB_TITLE like '%Manager';











