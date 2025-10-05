
| Function          | Purpose            | Notes                           |
| ----------------- | ------------------ | ------------------------------- |
| `COUNT()`         | Count rows         | Ignores NULLs unless `COUNT(*)` |
| `SUM()`           | Sum numbers        | Only numeric columns            |
| `AVG()`           | Mean value         | Ignores NULLs                   |
| `MIN()` / `MAX()` | Lowest / Highest   | Works on text, dates, numbers   |
| `DISTINCT`        | Removes duplicates | Works inside aggregates         |

# 🧠 Day 03 Notes — Aggregate Functions

## 🎯 Goal
Learn how to **summarize data** using SQL aggregate functions:
- `COUNT()` — count rows
- `SUM()` — total values
- `AVG()` — average value
- `MIN()` / `MAX()` — smallest & largest
- Combine with `WHERE`
- Use `DISTINCT` inside aggregates

---

## 📘 What I Learned
- `COUNT(*)` counts all rows (including NULLs)
- `COUNT(column)` skips NULL values
- `SUM()` / `AVG()` work only on numeric columns
- `MIN()` and `MAX()` also work on text and dates
- You can use `DISTINCT` to count unique values
- Aggregate functions ignore NULLs (except `COUNT(*)`)
- Sneak peek: `GROUP BY` groups data before aggregation

---

## ⚡ Useful Queries

```sql
-- 1. Count all employees
SELECT COUNT(*) AS total_employees FROM employees;

-- 2. Total salary cost
SELECT SUM(salary) AS total_salary_cost FROM employees;

-- 3. Average salary (IT)
SELECT AVG(salary) AS avg_it_salary
FROM employees
WHERE department = 'IT';

-- 4. Highest and lowest salary
SELECT MAX(salary) AS max_salary, MIN(salary) AS min_salary
FROM employees;

-- 5. Count unique departments
SELECT COUNT(DISTINCT department) AS unique_departments
FROM employees;

-- 6. Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
