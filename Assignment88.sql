-- 88 Generate report showing category wise number of products having price less than 1.

USE retail;

SELECT * FROM product p ;

SELECT category, COUNT(product_id) 
FROM product p 
WHERE price < 1
GROUP BY category;