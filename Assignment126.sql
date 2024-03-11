-- 126 Generate report showing total amount of purchase for each product each store.(category_name,total_amt)

use retail;

SELECT * FROM tran_dtl td ;
SELECT * FROM product p ;


SELECT td.product_id,th.store_id ,p.category ,SUM(td.amt) 
FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id 
JOIN tran_hdr th ON td.tran_id = th.tran_id 
GROUP BY td.product_id , th.store_id 
