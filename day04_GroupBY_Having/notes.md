🧩 1️⃣ Count employees per department
SELECT department, COUNT(*) AS total_employees
FROM employees
GROUP BY department;

🧩 2️⃣ Average salary per department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;

🧩 3️⃣ Total salary cost per department
SELECT department, SUM(salary) AS total_salary
FROM employees
GROUP BY department;

🧩 4️⃣ Highest salary in each department
SELECT department, MAX(salary) AS top_salary
FROM employees
GROUP BY department;

🧩 5️⃣ Combine WHERE + GROUP BY
Count employees hired after 2020, grouped by department:

SELECT department, COUNT(*) AS recent_hires
FROM employees
WHERE join_date >= '2020-01-01'
GROUP BY department;

🧩 6️⃣ HAVING: Filter groups with conditions
Show departments where avg salary > 60000:

SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 60000;

🧩 7️⃣ Departments with more than 2 employees
SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;

🧩 8️⃣ Combine WHERE + HAVING
Departments with >2 employees hired after 2020:

SELECT department, COUNT(*) AS emp_count
FROM employees
WHERE join_date >= '2020-01-01'
GROUP BY department
HAVING COUNT(*) > 2;

🧩 9️⃣ Sort grouped results by avg salary
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department
ORDER BY avg_salary DESC;

🧩 🔟 Multiple aggregates per group
SELECT department,
       COUNT(*) AS total_emps,
       AVG(salary) AS avg_salary,
       MAX(salary) AS max_salary,
       MIN(salary) AS min_salary
FROM employees
GROUP BY department
ORDER BY total_emps DESC;

| Clause     | Used For          | Acts On            | Example                      |
| ---------- | ----------------- | ------------------ | ---------------------------- |
| `WHERE`    | Filter rows       | Individual rows    | `WHERE salary > 50000`       |
| `GROUP BY` | Group rows        | Filtered rows      | `GROUP BY department`        |
| `HAVING`   | Filter groups     | Aggregated results | `HAVING AVG(salary) > 60000` |
| `ORDER BY` | Sort final output | Final result set   | `ORDER BY avg_salary DESC`   |

⚙️ Execution Flow (Behind the Scenes)

1️⃣ FROM → Load table
2️⃣ WHERE → Filter individual rows
3️⃣ GROUP BY → Group remaining rows
4️⃣ HAVING → Filter groups
5️⃣ SELECT → Aggregate & select columns
6️⃣ ORDER BY → Sort output