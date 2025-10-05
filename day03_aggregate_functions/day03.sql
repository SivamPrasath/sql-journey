Select * from employees
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