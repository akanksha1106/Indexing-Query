CREATE INDEX idx_hire_date ON employees(hire_date);
CREATE INDEX idx_dept_id ON employees(dept_id);

SELECT e.emp_name, e.salary, d.dept_name, e.hire_date
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
WHERE e.hire_date BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY e.salary DESC;



EXPLAIN SELECT e.emp_name, e.salary, d.dept_name, e.hire_date
FROM employees e
JOIN departments d ON e.dept_id = d.dept_id
WHERE e.hire_date BETWEEN '2024-01-01' AND '2024-12-31'
ORDER BY e.salary DESC;
