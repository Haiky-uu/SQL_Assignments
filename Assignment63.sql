-- Select all details from employee table with one additional column - "age_cat"
-- 1. young - age less than or equal to 30
-- 2. midium - age between 30 to 50
-- 3. old - age above 50

USE employees;

SELECT * FROM employees e ;

SELECT *,CASE
	WHEN YEAR(CURRENT_DATE())-YEAR(birth_date) <= 30 THEN 'Young'
	WHEN YEAR(CURRENT_DATE())-YEAR(birth_date) BETWEEN 30 AND 50 THEN 'Medium'
	WHEN YEAR(CURRENT_DATE())-YEAR(birth_date) > 50 THEN 'Old'
END AS 'age_cat',YEAR(CURRENT_DATE())-YEAR(birth_date) AS 'Age' FROM employees e ;

SELECT * , YEAR(CURRENT_DATE())-YEAR(birth_date) FROM employees e ;











