-- 102 Generate report showing all details of product which had min price. (product_id,description,category,price)

use retail;

SELECT product_id ,description ,category , price
FROM product p 
JOIN 
(SELECT MIN(price) as mprice FROM product p2) as p2
ON p.price = p2.mprice);