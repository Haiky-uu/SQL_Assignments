-- 111 Generate report showing no. of transactions per member in which he had not purchased 
-- any product from ‘dairy’category.

use retail;

SELECT * FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id = td.tran_id 
WHERE product_id NOT IN
(SELECT product_id  FROM product p 
WHERE category = 'Dairy')
GROUP BY th.member_id ;

SELECT * FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id = td.tran_id 
WHERE product_id  IN
(SELECT product_id  FROM product p 
WHERE category != 'Dairy')
GROUP BY th.member_id ;
