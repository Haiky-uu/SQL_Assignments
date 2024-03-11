-- 147 Generate report showing top 3 products purchased per store according to quantity sold. (store_id,product_id,description,total_qty,product_rank)

use retail;

SELECT * FROM 
(SELECT th.store_id,td.product_id ,p.description,SUM(td.qty) as t_qty,
DENSE_RANK() OVER(PARTITION BY th.store_id ORDER BY SUM(td.qty) DESC ) as product_rank
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id = td.tran_id
JOIN product p ON td.product_id = p.product_id
GROUP BY th.store_id,td.product_id,p.description)sub1
WHERE sub1.product_rank <= 3;
;



