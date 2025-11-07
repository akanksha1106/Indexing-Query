-- Department table
CREATE TABLE departments (
  dept_id INT PRIMARY KEY AUTO_INCREMENT,
  dept_name VARCHAR(50)
);

-- Employee table
CREATE TABLE employees (
  emp_id INT PRIMARY KEY AUTO_INCREMENT,
  emp_name VARCHAR(50),
  dept_id INT,
  hire_date DATE,
  salary DECIMAL(10,2),
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_name) VALUES 
('HR'), ('Finance'), ('IT'), ('Marketing');

INSERT INTO employees (emp_name, dept_id, hire_date, salary) VALUES
('John', 1, '2024-01-10', 45000),
('Sara', 2, '2024-02-15', 60000),
('Mike', 3, '2024-04-20', 75000),
('Nina', 3, '2024-08-05', 70000),
('Paul', 4, '2024-12-01', 55000);




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
