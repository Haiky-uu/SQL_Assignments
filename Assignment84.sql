-- 84 Generate report showing only those employees from above report who have withdrawn total salary in between 400000 to 500000 and arrange them in descending order by salary withdrawn.

USE employees;

SELECT * FROM salaries s
ORDER BY emp_no DESC;


SELECT emp_no, SUM(salary)  FROM salaries s 
GROUP BY emp_no 
HAVING SUM(salary) BETWEEN 400000 AND 500000
ORDER BY sum(salary) DESC ;


