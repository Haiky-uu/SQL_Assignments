-- 117 Generate report showing tran_ID,Product_id,product_description,tran_amt,tran_dt

USE retail;

SHOW tables;

SELECT * FROM tran_dtl td ;
SELECT * FROM product p ;

SELECT td.tran_id ,td.product_id,p.description,td.amt,td.tran_dt  
FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id ;

