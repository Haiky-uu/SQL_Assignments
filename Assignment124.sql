-- 124 Generate report showing total number of transactions per member per store.(member_id,store_id,store_name,num_tran)

USE retail;

SELECT * FROM store s ;
SELECT * FROM tran_hdr th ;

SELECT th.member_id ,th.store_id ,s.store ,COUNT(th.tran_id) AS No_of_trans
FROM tran_hdr th 
JOIN store s ON th.store_id = s.store_id 
GROUP BY th.member_id , th.store_id ;