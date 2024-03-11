-- 119 Generate report showing tran_ID,member_id,reg_store,tran_dt

USE retail;

SELECT th.tran_id ,th.member_id ,s.store,th.tran_id 
FROM tran_hdr th 
JOIN store s ON th.store_id = s.store_id ;


