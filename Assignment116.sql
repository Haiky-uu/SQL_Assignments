-- 116 Generate report that shows title wise number of employees in each department. 
-- (show department number and department name)


USE employees;

SELECT * FROM employees e ;
SELECT * FROM titles t ;
SELECT * FROM departments d ;
SELECT * FROM dept_emp de ;

SELECT t.title ,COUNT(e.emp_no) AS No_of_employees , de.dept_no, d.dept_name  
FROM employees e 
JOIN titles t ON e.emp_no = t.emp_no 
JOIN dept_emp de ON e.emp_no = de.emp_no 
JOIN departments d ON de.dept_no = d.dept_no 
GROUP BY t.title, de.dept_no ;