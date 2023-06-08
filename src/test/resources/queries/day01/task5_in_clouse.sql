select * from employees;

SELECT * FROM  EMPLOYEES where JOB_ID in ('IT_PROG','SA_REP');

--from employees, get me the all info whose ID in not ('IT_PROG, 'SA_REP')

SELECT * FROM  EMPLOYEES where JOB_ID NOT in ('IT_PROG','SA_REP');


SELECT CITY from LOCATIONS where COUNTRY_ID in('IT', 'US', 'UK');

SELECT * FROM EMPLOYEES where EMPLOYEE_ID in(134, 123, 145, 146);

SELECT * FROM EMPLOYEES where DEPARTMENT_ID is NULL;

SELECT *from EMPLOYEES where DEPARTMENT_ID is not NULL;

