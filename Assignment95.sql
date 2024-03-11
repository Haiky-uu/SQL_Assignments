-- 95 Generate report showing no. of transaction per member per store.

USE retail;

SELECT * FROM tran_hdr th ;

SELECT member_id , store_id ,COUNT(tran_id) AS "NO of transations"
FROM tran_hdr th 
GROUP BY member_id , store_id ;


