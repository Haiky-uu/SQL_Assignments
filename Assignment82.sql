-- 82 Generate report showing total number of managers for each department.

USE employees;

SHOW tables;

SELECT * FROM dept_manager dm ;

SELECT dept_no, COUNT(emp_no)
FROM dept_manager dm 
GROUP BY dept_no ;
