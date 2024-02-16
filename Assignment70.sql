-- 70 Generate report showing min price for beverages category.



use retail;

SELECT * FROM product p ;
SELECT MIN(price) FROM product p 
WHERE category = 'Beverages';