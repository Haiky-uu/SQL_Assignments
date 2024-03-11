-- 98 Generate report showing no. of transaction per member per store per month.

USE retail;

SELECT * FROM tran_hdr th ;

SELECT member_id , store_id , MONTH(tran_dt) AS Month, COUNT(tran_id) 
FROM tran_hdr th 
GROUP BY member_id , store_id , Month;

