SELECT * FROM EMPLOYEES;

SELECT STREET_ADDRESS,POSTAL_CODE from LOCATIONS;

SELECT DISTINCT STREET_ADDRESS, POSTAL_CODE from LOCATIONS;


--get me first name from employee;
SELECT FIRST_NAME from EMPLOYEES; -- this will show all the names
select DISTINCT FIRST_NAME from EMPLOYEES; --this will remove duplicates and

SELECT DISTINCT JOB_ID from EMPLOYEES;
SELECT  JOB_ID from EMPLOYEES;

-- get me unique country_id from locations
SELECT DISTINCT COUNTRY_ID from LOCATIONS;

--get me unique job_ids from jobs
SELECT DISTINCT JOB_ID from JOBS;
