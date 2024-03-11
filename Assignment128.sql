-- 128 Generate report showing total amount of purchase for each member per category per month.(member_id,category,month,total_amt)

USE retail;

SELECT * FROM tran_dtl td ;
SELECT * FROM tran_hdr th ;
SELECT * FROM product p ;

SELECT  th.member_id ,category ,MONTH(th.tran_dt) as Month, SUM(td.amt) as Total_amt
FROM tran_hdr th 
JOIN tran_dtl td  ON th.tran_id  = td.tran_id 
JOIN product p ON td.product_id = p.product_id 
GROUP BY category , Month;