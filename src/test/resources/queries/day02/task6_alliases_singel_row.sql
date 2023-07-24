select *from employees;

select FIRST_NAME as given_name from EMPLOYEES;-- if you want rename your column name you use "AS"

--Task: display annual salary for all employees as annual salary column
--salary *12
 select SALARY * 12 as "Annual Salary" from EMPLOYEES;

-----------------------------------------------------------------

--single Row function
--concatenation
-- IN Java : first_name + last_name
-- in sequel: first_name || ""|| last_name

--Task: Add email to @gmail.com domain and display as full_email
select EMAIL || '@gmail.com' as full_email from EMPLOYEES;

select concat(EMAIL, '@gmail.com') as "Full Email" from EMPLOYEES;

--Lower
select lower(Email ||'@gmail') as FULL_NAME from EMPLOYEES;

-- Upper
select Upper(Email ||'@gmail') as FULL_NAME from EMPLOYEES;

--Initcap first letter Upper case
select EMAIL from EMPLOYEES;
select initcap(EMAIL) from EMPLOYEES;

-- length display the length of the email
select EMAIL, length(EMAIL) from EMPLOYEES;

--If you need to sort
select EMAIL, length(EMAIL) from EMPLOYEES order by length(EMAIL)desc ;

--Display all the employees first_name and order by based on length of firstname
select FIRST_NAME, length(FIRST_NAME) from EMPLOYEES order by length(FIRST_NAME);

--Substring (columnName , beginIndex, NumOfChar)
--display all employees first_name
select FIRST_NAME from EMPLOYEES;
select FIRST_NAME, substr(FIRST_NAME, 0, 2) from EMPLOYEES;-- you getting index of 2 character


-- display all initial from employees ---> Steven King ---> S. K.
select FIRST_NAME,LAST_NAME, substr(FIRST_NAME, 0, 1)||'.'||substr(LAST_NAME,0,1) from EMPLOYEES;

--DISPLAY ALL THE EMPLOYEES First_name with 6 characters
select  FIRST_NAME from EMPLOYEES
where FIRST_NAME like '_______';

-- the proper way would be
select FIRST_NAME from EMPLOYEES where length(FIRST_NAME)=3;




