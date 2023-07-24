SELECT *FROM employees;

/* The group by clause divides the rows from the select statement into group based on the row we provide
   Instead of typing same query for all different job_id
   we can group them and find (lets say) average salary for each job_Id

   Important: "EACH" is the tricky word. Mostly represents the task is about group by.
 */

 SELECT distinct JOB_ID from EMPLOYEES;

--Interview question
SELECT SALARY from EMPLOYEES where JOB_ID ='IT_PROG';
SELECT AVG(SALARY) from EMPLOYEES where JOB_ID ='IT_PROG';

-- when you see EACH - tricky word on the requirement that means 'group'
--Get me each job_id min salary
--Display average salary for each job_ID

--Step1 _ I took all the job ids and grouped them together
SELECT JOB_ID from EMPLOYEES group by JOB_ID;

--Step2 _ I took all the job ids and grouped them together
SELECT JOB_ID, AVG(SALARY) from EMPLOYEES group by JOB_ID;

SELECT JOB_ID, AVG(SALARY), min(SALARY), max(SALARY), sum(SALARY), count(*) from EMPLOYEES group by JOB_ID;

--Display sum of the salary of each department in employees table
Select sum(SALARY), DEPARTMENT_ID from EMPLOYEES group by DEPARTMENT_ID;

SELECT max(SALARY) DEPARTMENT_ID from EMPLOYEES group by EMPLOYEE_ID;







