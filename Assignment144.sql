-- 144 Generate report showing product rank for member_id 1010
-- (member_id,product_id,total_sale,rank_product)

use retail;

SELECT sub1.*,
RANK() OVER(ORDER BY sub1.total_sale DESC) 
FROM 
(SELECT th.member_id, td.product_id, 
SUM(td.amt) OVER (PARTITION BY td.product_id ORDER BY product_id) as total_sale  
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id = td.tran_id 
WHERE th.member_id = 1010
GROUP BY td.product_id)sub1;

