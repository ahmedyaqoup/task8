

alter schema sales transfer dbo.Employees

--Select all columns from the "employees" table.
select *
from sales.Employees

--Retrieve only the "first_name" and "last_name" columns from the "employees" table.
select first_name,last_name
from sales.Employees

--Retrieve “full name” as a one column from "first_name" and "last_name" columns from the "employees" table.
select (first_name+' '+last_name) as 'fullname'
from Sales.Employees

--Show the average salary of all employees
select  avg (salary) as average_salary
from Sales.Employees

--Select employees whose salary is greater than 50000.
select*
from Sales.Employees
where salary>50000

--Retrieve employees hired in the year 2020.
select *
from Sales.Employees
where year(hire_data)='2020'

--List employees whose last names start with 'S.'
select *
from Sales.Employees
where last_name like's%'

--Display the top 10 highest-paid employees.
select top(10)*
from Sales.Employees
order by salary desc

--Find employees with salaries between 40000 and 60000.
select*
from Sales.Employees
where salary between 40000 and 60000

--Show employees with names containing the substring 'man.'
select*
from Sales.Employees
where first_name like '%man%' or last_name like '%man%'

--Display employees with a NULL value in the "hire_date" column.
select *
from Sales.Employees
where hire_data is null

--Select employees with a salary in the set (40000, 45000, 50000).
select *
from Sales.Employees
where salary in (40000,45000,50000)

--Retrieve employees hired between '2020-01-01' and '2021-01-01.'
select *
from Sales.Employees
where hire_data between '2020-01-01' and '2021-01-01'

--List employees with salaries in descending order.
select *
from Sales.Employees
order by salary desc

--Show the first 5 employees ordered by "last_name" in ascending order.
select top(5)*
from Sales.Employees
order by last_name asc 

--Display employees with a salary greater than 55000 and hired in 2020.
select *
from Sales.Employees
where salary>55000 and year(hire_data)='2020'

--Select employees whose first name is.'
select *
from Sales.Employees
where first_name like 'John' or first_name like 'Jane'

--List employees with a salary less than or equal to 55000 and a hire date after '2022-01-01.'
select *
from Sales.Employees
where salary <=55000 and hire_data>'2022-01-01'

--Retrieve employees with a salary greater than the average salary.
select*
from Sales.Employees
where salary  >(select avg(salary)from Sales.Employees)



--Display the 3rd to 7th highest-paid employees.
select *
from Sales.Employees
order by salary desc
OFFSET 3 ROWS 
FETCH NEXT 5 ROWS ONLY
--List employees hired after '2021-01-01' in alphabetical order.
select *
from Sales.Employees
where hire_data >'2021-01-01'
order by first_name asc,last_name asc
--Retrieve employees with a salary greater than 50000 and last name not starting with 'A.'
select *
from Sales.Employees
where salary>50000 and last_name not like 'A%'

--Display employees with a salary that is not NULL.
select *
from Sales.Employees
where salary is not null

--Show employees with names containing 'e' or 'i' and a salary greater than 45000.
select *
from Sales.Employees
where first_name like '%e%'or first_name like '%i%' or last_name like '%e%' or last_name like '%i%' and salary>45000


