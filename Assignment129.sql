-- 129 Generate report showing total number of transactions for each member which have total amount of purchase >100 . (member_id,member_name,num_tran_100)

use retail;

SELECT * FROM tran_dtl td ;
SELECT * FROM tran_hdr th ;
SELECT * FROM `member` m ;

SELECT th.member_id , CONCAT(m.first_name," ",m.last_name) as member_name , COUNT(th.tran_id)  
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id = td.tran_id 
JOIN `member` m ON th.member_id = m.member_id 
GROUP BY th.member_id 
HAVING SUM(td.amt) > 100;
