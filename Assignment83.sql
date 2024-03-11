-- 83 Generate report showing total salary withdrawn from company for each employee.

USE employees;

SHOW tables;

SELECT * FROM salaries s  ;

SELECT emp_no, SUM(salary) FROM salaries s 
GROUP BY emp_no ;

