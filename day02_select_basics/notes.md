 Day 2 Notes — Filtering Rows

## 📘 What I Learned
- How to use `WHERE` to filter rows
- `AND` combines multiple true conditions
- `OR` matches at least one condition
- `IN` is cleaner than multiple ORs
- `BETWEEN` includes both start and end
- `LIKE` for pattern matching with `%`
- `IS NULL` checks for missing values

## ⚡ Useful Queries
```sql
SELECT name, salary 
FROM employees 
WHERE department = 'IT' AND salary > 70000;

==================================================================

8️⃣ LIKE Operator (pattern match)

Prompt: Show employees whose name starts with “D”.
Solution:

SELECT name
FROM employees
WHERE name LIKE 'D%';


💡 % = wildcard (matches any string)

Pattern	Matches
'D%'	Starts with D
'%a'	Ends with a
'%i%'	Contains i