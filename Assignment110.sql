-- 110 Generate report showing tran_hdr table only for those
-- transaction in which at least one product starting from ‘L’ is purchased.


use retail;

SELECT * FROM tran_hdr th 
JOIN tran_dtl td  ON td.tran_id = th.tran_id 
WHERE td.product_id IN  
(SELECT product_id  FROM product p 
WHERE description LIKE "L%"); 