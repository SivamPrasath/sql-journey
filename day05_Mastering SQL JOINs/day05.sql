Create Table employees(
emp_id SERIAL PRIMARY KEY,
name VARCHAR(30),
department_id Int,
salary int
);

Insert into employees(name,department_id,salary) values
('Charlie','3','65000'),
('David','2','72000'),
('Eve','1','52000'),
('Frank','3','68000	'),
('Grace','2','75000'),
('Hank','4','50000')

Insert into employees(name,department_id,salary) values
('Hank','10','50000')

Insert into department(dept_name) values
('Digital')

Select * from employees
Select * from department

Select e.name,d.dept_name,e.salary from employees e
inner join department d
On e.department_id=d.dept_id

Select e.name,d.dept_name from employees e
left join department d
on e.department_id=d.dept_id

Select e.name,d.dept_name from employees e
right join department d
on e.department_id=d.dept_id

Select e.name, d.dept_name from employees e
Full Join department d
on e.department_id=d.dept_id