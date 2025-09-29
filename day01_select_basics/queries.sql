select * from employees
select name, salary from employees
select name as employee_name, salary as monthly_wage from employees
select name, department,salary from employees order by salary desc
select name,salary from employees order by salary desc limit 3
select * from employees where department = 'IT'
select name,hire_date from employees where department = 'IT' AND hire_date > '01-01-2020'
select name,salary from employees where department = 'Sales' AND salary > '55000'
select name, department,hire_date from employees where department IN ('IT','HR') order by hire_date ASC
select name, salary, salary*0.10 as yearly_bonus from employees