-- 113  Generate a report that shows total product sale by month. show product_description, month and sale

USE retail;

show tables;
SELECT * FROM product p ;

SELECT * FROM tran_dtl td  ;

SELECT  description as product_description , td.product_id,MONTH(tran_dt) as month, COUNT(td.tran_id) as total_sale
FROM tran_dtl td 
JOIN
product p ON td.product_id = p.product_id 
GROUP BY product_id,month ;

