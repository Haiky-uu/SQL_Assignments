-- 120 Generate report showing total number of transactions per member
-- (member_id,member_first_name,num_tran)

USE retail;

SELECT  th.member_id ,m.first_name ,COUNT(th.tran_id ) as Num_trans
FROM tran_hdr th 
JOIN `member` m ON th.member_id = m.member_id  
GROUP BY th.member_id ;
