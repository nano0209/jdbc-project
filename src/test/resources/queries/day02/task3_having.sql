select * from employees;

/*
 we often use HAVING clause in conjuction GROUP BY clause to filter group rows that do not satisfy a specified requirement
 Q: what is different between HAVING ANd WHERE condition when used with GROUP BY
 */


--Display jobs ids where the avg salary is more that 5k

 select JOB_ID, SALARY from EMPLOYEES;



 --Bad practice
SELECT JOB_ID, AVG(SALARY) from EMPLOYEES
where SALARY > 5000
group by JOB_ID;


--good practice
select JOB_ID, AVG(SALARY), count(*) from EMPLOYEES
group by JOB_ID
having (avg(SALARY)) >5000;

--Display department ID where employees count bigger that 5
select DEPARTMENT_ID, count(*)from EMPLOYEES
group by DEPARTMENT_ID
having count(*) > 5;

--Display duplicates name in employees table
select FIRST_NAME, count(*) from EMPLOYEES
group by FIRST_NAME
having count(*) >1;

--To give a name to the average column name we use______ as "HELLO"______
select * from EMPLOYEES;

select JOB_ID, avg(SALARY) as "Average Salary" from EMPLOYEES
where JOB_ID IN('IT_PROG', 'SA_REP')
group by JOB_ID;
