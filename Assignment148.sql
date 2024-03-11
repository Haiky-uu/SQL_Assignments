-- 148 Generate report showing rank for category according to total_amt of sale per store per month. (store_id,month,category,total_sale,category_rank)

use retail;
SELECT *,
DENSE_RANK() OVER(PARTITION BY sub1.store_id,sub1.Month_ ORDER BY sub1.total_amt DESC) as cat_rank
FROM (
SELECT th.store_id ,MONTH(td.tran_dt) as Month_, p.category ,SUM(td.amt) as total_amt FROM tran_dtl td 
JOIN 
product p ON p.product_id = td.product_id 
JOIN 
tran_hdr th ON td.tran_id  = th.tran_id 
GROUP BY th.store_id , Month_,p.category)sub1 ;