select *from Employees;

--1. Display all first_name and related department_name

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;



--2.Display all first_name and department_name including the  department without employee
SELECT FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e right join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--3.Display all first_name and department_name including the  employee without department
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

select FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS e right join  EMPLOYEES d
 on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--4.Display all first_name and department_name
--including the  department without employee  and  employees  without departments
select employee_id, first_name,DEPARTMENT_NAME
FROM  EMPLOYEES e full join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--5.Display All cities and related country names
select CITY, COUNTRY_NAME
FROM Locations l join Countries c
on l.COUNTRY_ID = c.COUNTRY_ID;


--6.Display All cities and related country names  including with countries without city
Select CITY COUTRY_NAME
from LOCATIONS l right join COUNTRIES c
on l.COUNTRY_ID = c.COUNTRY_ID;

Select CITY COUTRY_NAME
from COUNTRIES l left join LOCATIONS c
on l.COUNTRY_ID = c.COUNTRY_ID;

--7.Display all department name and  street address
select DEPARTMENT_NAME, STREET_ADDRESS
from departments d join locations l
on l.Location_ID = d.LOCATION_ID;

--8.Display first_name,last_name and department_name,city for all employees
select FIRST_NAME, LAST_NAME, DEPARTMENT_NAME, CITY
from EMPLOYEES e inner join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID
inner join LOCATIONS L
on d.LOCATION_ID = L.LOCATION_ID;

--9.Display first_name,last_name and department_name,city,country_name for all employees
select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME ,CITY,COUNTRY_NAME
FROM EMPLOYEES e JOIN DEPARTMENTS d
                      on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 JOIN LOCATIONS l
                      on d.LOCATION_ID = l.LOCATION_ID
                 JOIN COUNTRIES c
                      on l.COUNTRY_ID = c.COUNTRY_ID;

select FIRST_NAME,LAST_NAME,DEPARTMENT_NAME ,CITY, COUNTRY_NAME
FROM EMPLOYEES e JOIN DEPARTMENTS d
                      on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 JOIN LOCATIONS l
                      on d.LOCATION_ID = l.LOCATION_ID
                 JOIN COUNTRIES c
                      on l.COUNTRY_ID = c.COUNTRY_ID
WHERE COUNTRY_NAME = 'United Kingdom';


--11.Display how many employee we have for each country name
select COUNTRY_NAME, count(*)
FROM EMPLOYEES e JOIN DEPARTMENTS d
                      on e.DEPARTMENT_ID = d.DEPARTMENT_ID
                 JOIN LOCATIONS l
                      on d.LOCATION_ID = l.LOCATION_ID
                 JOIN COUNTRIES c
                      on l.COUNTRY_ID = c.COUNTRY_ID
GROUP BY COUNTRY_NAME
order by COUNT(*);



