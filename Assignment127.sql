-- 127 Generate report showing total amount of purchase for each category per  month.(category_name,month,total_amt)

USE retail;

SELECT * FROM tran_dtl td ;
SELECT * FROM product p ;

SELECT p.category , MONTH(td.tran_dt) as Month, SUM(td.amt) as Total_amt
FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id
GROUP BY p.category , Month;

