-- 86 Generate report showing total number of transaction per month per store in ascending order.

USE retail;

SELECT * FROM tran_hdr th ;

SELECT tran_id, store_id AS Store, MONTH(tran_dt) AS Month 
FROM tran_hdr th 
GROUP BY Month, Store
ORDER BY Store;


