-- 115 Generate a report that shows employee number, first name, title, department name.

USE employees;

SELECT * FROM departments d ;
SELECT * FROM employees e ;
SELECT * FROM titles t ;
SELECT * FROM dept_emp de ;

SELECT e.emp_no , e.first_name ,t.title ,d.dept_name 
FROM employees e 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN departments d ON de.dept_no = d.dept_no 
JOIN titles t ON e.emp_no = t.emp_no ;




