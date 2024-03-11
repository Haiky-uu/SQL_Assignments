-- 97 Generate report showing no.of transaction per store per month.

USE retail;

SELECT * FROM tran_hdr th ;

SELECT store_id , MONTH(tran_dt) AS Month, COUNT(tran_id) 
FROM tran_hdr th 
GROUP BY store_id , Month;

