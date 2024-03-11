-- 105 Generate report showing tran_dtl table only for products belonging to ‘grocery’category.


use retail;

SELECT *  FROM tran_dtl td 
WHERE product_id IN
(SELECT product_id  FROM product p
WHERE category = 'Grocery');

SELECT * FROM product p  
WHERE category = 'Grocery'
GROUP BY product_id ;