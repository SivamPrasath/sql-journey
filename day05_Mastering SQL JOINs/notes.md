10 Practice Queries

1️⃣ INNER JOIN — Match only common records

SELECT e.name, d.dept_name, e.salary
FROM employees e
INNER JOIN departments d
ON e.department_id = d.dept_id;

🧠 Only employees who belong to a department that exists in departments.

2️⃣ LEFT JOIN — Keep all from the left table

SELECT e.name, d.dept_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.dept_id;

🧠 Shows all employees — even if their department doesn’t exist (NULL for missing).

3️⃣ RIGHT JOIN — Keep all from the right table

SELECT e.name, d.dept_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.dept_id;

🧠 Shows all departments — even those without employees.



