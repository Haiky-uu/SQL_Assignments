-- 104 Generate report showing tran_hdr table only for those members who had registered in store 1.

use retail;

SELECT * FROM tran_hdr th ;
SHOW tables;
SELECT * FROM `member` m ;


SELECT * FROM tran_hdr th 
WHERE member_id IN
(SELECT member_id  FROM `member` m 
WHERE store_id = 1)
