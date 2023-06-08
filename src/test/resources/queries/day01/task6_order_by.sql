select * from employees;

-- it allows to sort data based on provided column name
--as a default it sorts it asc (0-9, a-z)

select * FROM EMPLOYEES order by SALARY desc; --highest to lowest salary

SELECT * from EMPLOYEES order by SALARY; --lowest to highest salary by default happens
SELECT *FROM EMPLOYEES order by SALARY asc; -- same lowest to highest salary

SELECT *FROM EMPLOYEES order by 8 asc; --we can do with index. Index starts from 1.

SELECT EMAIL, SALARY from EMPLOYEES order by SALARY desc;

-- Display all information from employees where employee id < 10 based on first name in alphabetical order
SELECT * FROM EMPLOYEES where EMPLOYEE_ID < 150 order by FIRST_NAME;

-- IQ: Display all information from employees based on first name ascending and last name descending
SELECT * FROM EMPLOYEES order by FIRST_NAME, LAST_NAME desc;
SELECT * FROM EMPLOYEES order by FIRST_NAME asc,LAST_NAME desc;

