CREATE TABLE employees (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  department VARCHAR(30),
  salary NUMERIC(10,2),
  join_date DATE
);

INSERT INTO employees (name, department, salary, join_date) VALUES
('Alice', 'HR', 55000, '2021-01-10'),
('Bob', 'IT', 70000, '2020-05-15'),
('Charlie', 'Finance', 65000, '2019-03-22'),
('David', 'IT', 72000, '2022-11-11'),
('Eve', 'HR', 52000, '2020-07-30'),
('Frank', 'Finance', 68000, '2021-06-19'),
('Grace', 'IT', 75000, '2018-12-03'),
('Hank', 'HR', 50000, '2022-01-08');

Questions
🧩 Query 1 — Count all employees
🧩 Query 2 — Count employees in HR
🧩 Query 3 — Total salary cost
🧩 Query 4 — Average salary of IT department
🧩 Query 5 — Highest and Lowest salary
🧩 Query 6 — Count distinct departments
🧩 Query 7 — Average salary by department
🧩 Query 8 — Count employees joined after 2020
🧩 Query 9 — Total IT salary > 70000
🧩 Query 10 — Difference between max and min salary

Select count(*)as total_employees from employees
Select count(*)as HR_Employees from employees where department='HR'
Select sum(salary) as Total_Salary_Cost from employees
Select Avg(salary)as Avg_IT_Dept_Salary from employees where department='IT'
Select max(salary)as Highest_Salary, Min(Salary)as Lowest_Salary from employees
Select count(distinct department)as Unique_Departments from employees
Select department, Avg(salary)as Average_Salary from employees Group By department
Select count(*)as Joined_After_2020 from employees where join_date >= '2020-01-01'
Select sum(salary) as high_IT_salaries from employees where department = 'IT' AND salary > 70000
Select max(salary)-min(salary) as salary_gap from employees
