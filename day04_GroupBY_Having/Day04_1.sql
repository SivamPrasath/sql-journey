Select * from employees
Select department,count(*) from employees Group by department
Select department,Avg(salary) as Avg_Salary from employees Group By department
Select department,sum(salary) as total_cost from employees Group By department
Select department,max(salary) as highest_salary from employees Group By department
Select department,count(*) as hired_after_2020 from employees 
 Where join_date >= '01-01-2020' Group By department 
Select department, Avg(salary) as Avg_salary from employees Group by department 
 Having Avg(salary) > 60000
Select department,count(*) as Num_of_employees from employees  Group by department
 Having count(*) >= 2
Select department,count(*) as no_of_employees from employees
 Where join_date >= '01-01-2020' Group By department Having count(*) >= 2
Select department,Avg(salary) from employees Group by department order by Avg(salary) DESC
Select department, count(*)as emp_count, max(salary) as highest_salary, min(salary) as lowest_salary, avg(salary) as
 average_salary from employees group by department order by emp_count DESC

