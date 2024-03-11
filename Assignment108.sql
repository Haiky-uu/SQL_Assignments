-- 108 Generate report showing member details for those members who had purchased ‘milk’ and ‘apple’ 
-- in single transaction. (member_id,first_name,last_name)

use retail;

SELECT * FROM tran_dtl td ;
SELECT * FROM `member` m ;


SELECT m.member_id,m.first_name ,m.last_name  FROM tran_dtl td
JOIN tran_hdr th  ON th.tran_id = td.tran_id 
JOIN `member` m ON th.member_id = m.member_id 
WHERE product_id IN
(SELECT product_id  FROM product p
WHERE product_id IN ('34','42'))
GROUP BY m.member_id 
HAVING COUNT(DISTINCT td.product_id )=2;

SELECT m.member_id , first_name ,last_name  FROM tran_dtl td
JOIN tran_hdr th  ON td.tran_id  = th.tran_id 
JOIN `member` m ON th.member_id = m.member_id 
WHERE product_id IN 
(SELECT product_id  FROM product p
WHERE description IN ('milk','apple'))
GROUP BY member_id
HAVING COUNT(DISTINCT td.product_id) = 2;




