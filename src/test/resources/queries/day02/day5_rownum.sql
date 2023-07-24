select * from employees;

select * from EMPLOYEES order by SALARY desc;

--Bad practice, this following query splits /limits the table and then sorts
select * FROM EMPLOYEES
where ROWNUM < 6
order by SALARY desc;

--Correct one would be
select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 6;

-- display first 53 highest salary employees information in the company
select * from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 53;

--with salary duplicate still not good practice
--Display all information from employees who is making tTh highest salary
select SALARY from EMPLOYEES;
select min(SALARY) from (select * from EMPLOYEES order by SALARY desc)
where ROWNUM < 6;

select * from EMPLOYEES
where SALARY = 13500;

--to make dynamic
select * from EMPLOYEES
where SALARY=(select min(SALARY)from (select* from EMPLOYEES order by SALARY desc )
where ROWNUM <6);

-- Good practice - we nees to remove the duplicates and then split / limit the table then get the min salary
select distinct SALARY from EMPLOYEES
order by SALARY desc;

select min(SALARY) from (select distinct  SALARY from EMPLOYEES order by SALARY desc )
where ROWNUM < 6;

-- find all inform ation for the 5th highest salary
select *from EMPLOYEES
where SALARY = 13000;

--to mak dynamic
select * from EMPLOYEES
where SALARY= (select min(SALARY)from (select distinct SALARY from EMPLOYEES order by SALARY desc)
where rownum < 6);

select * from EMPLOYEES
where SALARY= (select min(SALARY)from (select distinct SALARY from EMPLOYEES order by SALARY desc)
               where rownum < 53);


