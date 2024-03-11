-- 63 Select all details from employee table with one additional column - "age_cat"
-- 1. young - age less than or equal to 30
-- 2. midium - age between 30 to 50
-- 3. old - age above 50


use employees;
SELECT sub1.*,
CASE 
	WHEN sub1.age < 30 THEN 'Young age'
	WHEN sub1.age BETWEEN 30 and 50 THEN 'Midium age'
	WHEN sub1.age > 50 THEN 'Old age'
END as age_cat
FROM
(SELECT *, YEAR(hire_date)-YEAR(birth_date) as age FROM employees e )sub1;

-- OR

SELECT *,
CASE 
	WHEN YEAR(hire_date)-YEAR(birth_date) < 30 THEN 'Young age'
	WHEN YEAR(hire_date)-YEAR(birth_date) BETWEEN 30 and 50 THEN 'Middle age'
	WHEN YEAR(hire_date)-YEAR(birth_date) < 50 THEN 'Young age'
END as age_cat
FROM employees e ;








