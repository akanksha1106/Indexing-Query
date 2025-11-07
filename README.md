# Indexing-Query
#  What I Built
I built a SQL Index Optimization Project that demonstrates how adding indexes to database tables can significantly improve query performance.
The project uses two main tables — employees and departments — to show how a query behaves before and after indexing.

The project includes:


SQL scripts for creating and populating tables


Original (unoptimized) and optimized queries


Index creation statements


A performance comparison report (execution time, rows scanned, and EXPLAIN analysis)



# Why I Built It
The main goal was to understand how database indexes work and why they’re important for query optimization.
Without indexes, the database scans every row in a table, which is inefficient for large datasets.
By creating proper indexes:


The database can locate records faster using data structures like B-trees.


JOIN and WHERE operations become much faster.


It demonstrates the impact of database design on performance — an essential skill for developers and data engineers.


In short:

I built this project to visualize and prove how indexing can reduce query time and resource usage drastically.


# How I Built It
1. Created Database Tables
   
Defined two relational tables:

CREATE TABLE departments ( 

  dept_id INT PRIMARY KEY AUTO_INCREMENT,
  
  dept_name VARCHAR(50) 
  
);


CREATE TABLE employees ( 

  emp_id INT PRIMARY KEY AUTO_INCREMENT,
  
  emp_name VARCHAR(50),
  
  dept_id INT,
  
  hire_date DATE,
  
  salary DECIMAL(10,2),
  
  FOREIGN KEY (dept_id) REFERENCES departments(dept_id) 
  
);

2. Inserted Sample Data
   
Added realistic data for departments and employees to simulate a working environment.

3. Tested Original Query (Unoptimized)
   
Executed a query joining both tables and filtering by hire date — it was slow because no indexes were used.

SELECT e.emp_name, e.salary, d.dept_name, e.hire_date 

FROM employees e 

JOIN departments d ON e.dept_id = d.dept_id 

WHERE e.hire_date BETWEEN '2024-01-01' AND '2024-12-31' 

ORDER BY e.salary DESC;

4. Created Indexes
   
Optimized performance by adding indexes on frequently searched or joined columns.

CREATE INDEX idx_hire_date ON employees(hire_date);

CREATE INDEX idx_dept_id ON employees(dept_id);

5. Re-tested Query (Optimized)
   
Ran the same query again — it executed much faster.

Used EXPLAIN to verify the difference in query plans.

6. Analyzed Performance
    
Compared:

MetricBefore IndexAfter IndexQuery Time2.1 sec0.10 secRows Scanned100,000+1,200TypeFull Table ScanIndexed Range Scan


Each includes screenshots, query comparisons, and conclusions.
<img width="1366" height="768" alt="Screenshot (137)" src="https://github.com/user-attachments/assets/e90dda73-9373-4941-80d5-d11cc019ea34" /> 
<img width="1366" height="768" alt="Screenshot (138)" src="https://github.com/user-attachments/assets/ed98c1ef-30b8-4e26-ae1d-986d2f64a408" /> 
<img width="1366" height="768" alt="Screenshot (139)" src="https://github.com/user-attachments/assets/9fc6c7f6-1fad-46aa-8aaf-372ddb9f6ba9" />
<img width="1366" height="768" alt="Screenshot (140)" src="https://github.com/user-attachments/assets/63d5e9a9-f755-4ebc-bad8-5696da7c6696" />






