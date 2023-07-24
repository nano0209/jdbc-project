SELECT * FROM EMPLOYEES;

SELECT * from JOBS where JOB_TITLE = 'President'or JOB_TITLE ='Manager sale' or JOB_TITLE = 'Finance Manager';

SELECT * FROM JOBS where JOB_TITLE IN ('President', 'Manager sale','Finance Manager');

SELECT * from DEPARTMENTS where MANAGER_ID IS NULL;

SELECT * FROM LOCATIONS where COUNTRY_ID In ('US','UK');

SELECT * FROM LOCATIONS where COUNTRY_ID NOT in ('US','UK');


SELECT * FROM COUNTRIES where REGION_ID = 1 AND country_name != 'Belgium'; -- they are same
SELECT * FROM COUNTRIES where REGION_ID = 1 AND country_name <> 'Belgium'; -- they are same
SELECT * FROM COUNTRIES where REGION_ID = 1 AND country_name not in 'Belgium'; -- they are same


SELECT * FROM EMPLOYEES where EMPLOYEE_ID NOT In(90, 60,130,120);


