-- 89 Generate report showing total number of transactions per member per store.

USE retail;

SELECT * FROM tran_hdr th ;

SELECT COUNT(tran_id) AS No_of_Trans , member_id AS Per_member , store_id AS Per_store  
FROM tran_hdr th 
GROUP BY member_id , store_id ;
