-- 138 Generate report showing total_sale for each category per store.
-- (category,st1_sale,st2_sale,st3_sale,total_sale)

use retail;

SELECT sub1.category,
MAX(CASE 
	WHEN sub1.store_id = 1 THEN totals
END )as st1_sale,
MAX(CASE
	WHEN sub1.store_id = 2 THEN totals
END )as st2_sale,
MAX(CASE
	WHEN sub1.store_id =3 THEN totals
END )as st3_sale
FROM 
(SELECT p.category ,th.store_id,SUM(td.amt) as totals FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id 
JOIN tran_hdr th ON td.tran_id = th.tran_id 
GROUP BY p.category ,th.store_id )sub1
GROUP BY sub1.category;