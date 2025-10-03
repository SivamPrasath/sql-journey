Select * from employees where department='Sales'
Select * from employees where department <> 'HR'
Select * from employees where salary > 60000
Select name,department,salary from employees where department = 'IT' AND salary > 70000
Select name,department from employees where department = 'HR' OR department = 'Finance'
Select name,department from employees where department IN ('Sales','Finance','HR')
Select name,department,salary from employees where  salary BETWEEN 55000 AND 70000
Select name from employees where name LIKE 'D%'
INSERT into employees (name, department, salary, hire_date) Values('Grace','HR',100000,'2023-01-10')
Select * from employees where salary is NULL
INSERT into employees (name, department, salary, hire_date) Values('Peter','Sales',NULL,'2023-01-10')
Select name,salary,department from employees where salary is NULL
Select * from employees where department != 'IT' AND hire_date >= '01-01-2020' ORDER BY salary DESC