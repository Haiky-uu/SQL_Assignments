-- 81 Generate report showing employees who have worked in more than one department.

USE employees;

SHOW tables;

SELECT * FROM dept_emp de  ;

SELECT count(dept_no) , emp_no FROM dept_emp de 
GROUP BY emp_no  ; 

SELECT COUNT(*) FROM dept_emp de ;
