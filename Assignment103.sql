-- 103 Generate report showing details of all products from category which had least number of products. 
-- (product_id,description,category,price)

use retail;

SELECT * FROM product p 
WHERE category IN
(SELECT category FROM product p
GROUP BY category
HAVING COUNT(product_id)  = (SELECT MIN(sub.count_p) 
FROM 
(SELECT COUNT(product_id) as count_p 
FROM product p2 GROUP BY category)sub))

SELECT * FROM product p 
WHERE category IN
(SELECT category  FROM product p 
GROUP BY category 
HAVING COUNT(product_id) =
(SELECT MIN(sub1.p_c) 
FROM 
(SELECT COUNT(product_id) as p_c FROM product p2
GROUP by category)sub1));


SELECT * FROM product p ;
SELECT sub1.* FROM
(SELECT *, COUNT(product_id) as pr  FROM product p 
GROUP BY p.category )sub1
WHERE pr = 7;

SELECT * FROM product p
WHERE product_id = 7;