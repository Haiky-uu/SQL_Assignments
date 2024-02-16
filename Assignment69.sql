-- 69 Generate report showing number of employees born in year 1960.

use employees;

SELECT count(*) FROM employees e 
WHERE YEAR(birth_date)= 1960 ;
