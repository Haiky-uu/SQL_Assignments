-- 107 Generate report showing number of transaction for each member 
-- in which he/she had purchased ‘bread’.(member_id,num_tran)

use retail;

SELECT th.member_id , COUNT(td.tran_id) as No_of_trans FROM tran_dtl td 
JOIN tran_hdr th ON td.tran_id = th.tran_id 
WHERE product_id IN 
(SELECT product_id  FROM product p 
WHERE p.description = 'Bread')
GROUP BY th.member_id;
