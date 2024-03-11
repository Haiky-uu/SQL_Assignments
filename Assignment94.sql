-- 94 Generate report showing no. of transaction per store.

USE retail;

SELECT * FROM tran_hdr th ;

SELECT store_id ,COUNT(tran_id) 
FROM tran_hdr th 
GROUP BY store_id ;