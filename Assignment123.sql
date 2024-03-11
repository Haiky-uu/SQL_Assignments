-- 123 Generate report showing total amount of purchase for each member (member_id,member_name,total_purchase_amt)

USE retail;

SELECT * FROM `member` m ;
SELECT * FROM tran_dtl td ;
SELECT * FROM tran_hdr th ;

SELECT th.member_id , CONCAT(m.first_name," ",m.last_name) as Member_name, SUM(td.amt) as total_purchase_amt  
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id = td.tran_id 
JOIN `member` m ON th.member_id = m.member_id 
GROUP BY th.member_id ;
