-- 136 Generate report showing total quantity per category per store.
-- (category,st1_qty,st2_qty,st3_qty)

use retail;

SELECT sub1.category,
MAX(CASE 
	WHEN sub1.store_id=1 THEN total ELSE 0 
END) as st1_qty,
MAX(CASE
	WHEN sub1.store_id=2 THEN total ELSE 0
END) as st2_qty,
MAX(CASE
	WHEN sub1.store_id=3 THEN total ELSE 0
END) as st3_qty
FROM 
(SELECT p.category ,th.store_id,SUM(td.qty) as total
FROM tran_dtl td 
JOIN tran_hdr th ON td.tran_id = th.tran_id 
JOIN product p ON p.product_id = td.product_id 
GROUP BY p.category ,th.store_id )sub1
GROUP BY sub1.category;