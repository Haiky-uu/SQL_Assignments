-- 99 Generate report showing no. of transaction per store in descending order.

USE retail;

SELECT * FROM tran_hdr th ;
SELECT store_id , COUNT(tran_id)
FROM  tran_hdr th
GROUP BY store_id 
ORDER BY store_id DESC ; 