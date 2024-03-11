-- 109 Generate report showing tran-hdr table only for those members who had registered 
-- in the month of ‘May’ of any year.

use retail;

SELECT * FROM tran_hdr th 
WHERE member_id IN
(SELECT member_id  FROM `member` m
WHERE MONTH(reg_date) = 5);
