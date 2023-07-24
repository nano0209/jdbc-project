SELECT *FROM Employees;

/*
 Aggregate function - Multi function

 */
 --Count
--How many employees we have?
select COUNT (*) FROM EMPLOYEES;

--Home many unique firstname we have?
SELECT COUNT (distinct FIRST_NAME) from EMPLOYEES;

--Homw many employees work as 'IT PROG', 'SA_REP?
SELECT * from EMPLOYEES where JOB_ID in('IT PROG', 'SA_REP');
SELECT COUNT (*) from EMPLOYEES where JOB_ID in('IT PROG', 'SA_REP');

-- How many employees we have department ID is null
SELECT * from EMPLOYEES where DEPARTMENT_ID IS NULL;
SELECT COUNT (*) from EMPLOYEES where DEPARTMENT_ID IS NULL;

-- or we can do it this way, but since COUNT does not accept null as value it will not count it.
SELECT * from EMPLOYEES where DEPARTMENT_ID IS NULL;
SELECT COUNT (DEPARTMENT_ID) from EMPLOYEES where DEPARTMENT_ID IS NULL;

-- Get me min salary from employees?
SELECT SALARY FROM EMPLOYEES;--this shows all salary
select Min (SALARY) from EMPLOYEES; -- this shows min salary

-- Get me average salary from employees?
SELECT SALARY FROM EMPLOYEES;--this shows all salary
select AVG (SALARY) from EMPLOYEES; -- this shows average salary

-- Get me sum of salary from employees?
select SUM (SALARY) from EMPLOYEES; -- this shows SUM salary

-- Calculation of average
select SUM (SALARY) from EMPLOYEES; -- this shows SUM salary
SELECT COUNT (*) from EMPLOYEES;

--Round
SELECT ROUND (avg(SALARY), 2) from EMPLOYEES; --6461.83
SELECT ROUND (avg(SALARY), 0) from EMPLOYEES; --6462















