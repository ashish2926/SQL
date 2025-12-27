
-- joins_examples.sql

-- 1. INNER JOIN between employees and departments
SELECT e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name
FROM employees e
INNER JOIN departments d
        ON e.department_id = d.department_id;

-- 2. LEFT JOIN to list all departments even if they have no employees
SELECT d.department_id,
       d.department_name,
       e.employee_id,
       e.first_name
FROM departments d
LEFT JOIN employees e
       ON d.department_id = e.department_id;

-- 3. RIGHT JOIN to list all employees and their department (if any)
SELECT e.employee_id,
       e.first_name,
       e.last_name,
       d.department_name
FROM employees e
RIGHT JOIN departments d
        ON e.department_id = d.department_id;

-- 4. FULL OUTER JOIN to show match and non-match rows
-- Note: Not supported in MySQL; works in PostgreSQL / SQL Server
SELECT e.employee_id,
       e.first_name,
       d.department_name
FROM employees e
FULL OUTER JOIN departments d
              ON e.department_id = d.department_id;

-- 5. CROSS JOIN to get all combinations of employees and departments
SELECT e.employee_id,
       d.department_id
FROM employees e
CROSS JOIN departments d;

-- 6. SELF JOIN to show employees with their managers
SELECT e.employee_id,
       e.first_name AS employee_name,
       m.employee_id AS manager_id,
       m.first_name AS manager_name
FROM employees e
LEFT JOIN employees m
       ON e.manager_id = m.employee_id;

-- 7. JOIN with additional filter condition
SELECT e.employee_id,
       e.first_name,
       d.department_name
FROM employees e
INNER JOIN departments d
        ON e.department_id = d.department_id
WHERE d.department_name = 'Sales';

-- 8. JOIN across three tables: employees, departments, locations
SELECT e.employee_id,
       e.first_name,
       d.department_name,
       l.city,
       l.country
FROM employees e
INNER JOIN departments d
        ON e.department_id = d.department_id
INNER JOIN locations l
        ON d.location_id = l.location_id;

-- 9. Aggregation with JOIN: count employees per department
SELECT d.department_name,
       COUNT(e.employee_id) AS employee_count
FROM departments d
LEFT JOIN employees e
       ON d.department_id = e.department_id
GROUP BY d.department_name
ORDER BY employee_count DESC;

-- 10. USING clause example (if your DB supports it)
SELECT e.employee_id,
       e.first_name,
       d.department_name
FROM employees e
JOIN departments d
USING (department_id);
