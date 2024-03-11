-- 118 Generate report showing tran_ID,member_id,member_first_name,tran_dt

use retail;

SELECT th.tran_id , th.member_id ,m.first_name ,th.tran_dt 
FROM tran_hdr th 
JOIN `member` m ON th.member_id = m.member_id ; 