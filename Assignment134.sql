-- 134 Generate report showing number of transactions per product per store. (product_id,description,st1_tran,st2_tran,st3_tran)

use Retail_pro;
use retail;

SELECT sub1.product_id,sub1.description,
MAX(CASE WHEN sub1.store_id=1 THEN trans END) AS st1_tran, -- MAX function is used to pivote data see o/p of sub query
MAX(CASE WHEN sub1.store_id=2 THEN trans END) AS st2_tran, -- it takes row vertical data of each store and puts in columns 
MAX(CASE WHEN sub1.store_id=3 THEN trans END) AS st3_tran
FROM 
(SELECT td.product_id,p.description ,th.store_id,COUNT(td.tran_id) as trans  FROM tran_dtl td 
JOIN tran_hdr th ON th.tran_id = td.tran_id 
JOIN product p ON td.product_id = p.product_id 
GROUP BY td.product_id ,p.description,th.store_id )sub1
GROUP BY sub1.product_id,sub1.description;


