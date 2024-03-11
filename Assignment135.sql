-- 135 Generate report showing total quantity for each product
-- per store.(product_id,description,st1_qty,st2_qty,st3_qty,total_qty)


use retail;

SELECT sub1.product_id,sub1.description,
MAX(CASE WHEN sub1.store_id=1 THEN sub1.total_qty ELSE 0 END) AS st1_qty,
MAX(CASE WHEN sub1.store_id=2 THEN sub1.total_qty  ELSE 0 END) AS st2_qty,
MAX(CASE WHEN sub1.store_id=3 THEN sub1.total_qty ELSE 0 END) AS st3_qty
FROM
(SELECT td.product_id ,p.description,th.store_id, COUNT(td.qty) AS total_qty FROM tran_dtl td 
JOIN tran_hdr th ON th.tran_id = td.tran_id 
JOIN product p ON p.product_id = td.product_id 
GROUP BY td.product_id , th.store_id )sub1
GROUP BY sub1.product_id,sub1.description;

