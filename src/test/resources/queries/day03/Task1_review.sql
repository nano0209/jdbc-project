SELECT * from employees;

SELECT FIRST_NAME, HIRE_DATE
FROM EMPLOYEES
WHERE HIRE_DATE = TO_DATE('2003-06-17', 'YYYY-MM-DD');


--first sort salary
--then remove duplicates
select distinct SALARY FROM EMPLOYEES order by SALARY desc;

--cut the list from line 4 to get the first 3 rows
-- then use the min function to find the 3 maximum

select min(SALARY) from (select distinct SALARY FROM EMPLOYEES order by SALARY desc)
where ROWNUM < 4;

select * from EMPLOYEES
    where SALARY = 14000;

-- how can we get information about that employee (3rd max)
select * from EMPLOYEES where SALARY = (select min(SALARY) from (select distinct SALARY FROM EMPLOYEES order by SALARY desc)
                                        where ROWNUM < 4);


--first sort salary
--then remove duplicates
select distinct SALARY FROM EMPLOYEES order by SALARY asc;
SELECT *from EMPLOYEES
where SALARY =(select max(Salary)from (select distinct SALARY from EMPLOYEES order by SALARY asc)
where  ROWNUM < 4);





