-- 122 Generate report showing total quantity purchased for each product (product_id,product_description,total_qty)


USE retail;

SELECT * FROM product p ;
SELECT * FROM tran_dtl td ;


SELECT td.product_id as each_product,p.description ,SUM(qty) as total_qty
FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id 
GROUP BY each_product;

