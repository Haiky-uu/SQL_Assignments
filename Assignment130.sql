-- 130 Generate report showing number of transactions per store for each member.(member_id,store1_tran,store2_tran,store3_tran)

use retail;

SELECT 
th.member_id,
SUM(CASE WHEN th.store_id = 1 THEN 1 ELSE 0	END) as store_1,
SUM(CASE WHEN th.store_id =2 THEN 1 ELSE 0 END )as store_2,
SUM(CASE WHEN th.store_id = 3 THEN 1 ELSE 0 END )as store_3
FROM tran_hdr th 
JOIN tran_dtl td ON th.tran_id = td.tran_id
GROUP BY th.member_id ;


