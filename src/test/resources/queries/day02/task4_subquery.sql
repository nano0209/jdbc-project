SELECT * from employees;

SELECT max(SALARY) from EMPLOYEES; -- 24000

select *from EMPLOYEES
    where SALARY = 24000;

select *from EMPLOYEES
where SALARY =(select max(SALARY) from EMPLOYEES);

select * from EMPLOYEES
order by SALARY desc;

--find second max
select max(SALARY) from EMPLOYEES
where SALARY <24000;

--Make iy dynamic now
select max(SALARY) from EMPLOYEES
where SALARY <(select max(SALARY)from EMPLOYEES);

--Display all information for second highest
select * from EMPLOYEES
where SALARY = 17000;

--make it dynamic
select * from EMPLOYEES
where SALARY = (select max(SALARY)from EMPLOYEES
    where SALARY <(select max(SALARY) from EMPLOYEES));

select avg(SALARY) from EMPLOYEES;
select ROUND(avg(SALARY),2) from EMPLOYEES;

--To make dynamic: get all employees who is making more > avg
select *from EMPLOYEES
where SALARY>(select ROUND(avg(SALARY),2)from EMPLOYEES);

