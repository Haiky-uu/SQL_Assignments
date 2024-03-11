-- 142 Generate report showing store_id,month,no_transactions,rank_month.(highest transactions-Rank 1)

use retail;


SELECT sub1.*,
RANK() OVER(ORDER BY sub1.No_of_trans DESC) as Rank_month
FROM
(SELECT MONTH(tran_dt) as Month_, COUNT(tran_id) as No_of_trans
FROM tran_dtl td
GROUP BY Month_)sub1;


-- with store id it's not working as there is date problem in trans _hdr only has months of 1 and 5 not all 12
SELECT th.store_id ,MONTH(td.tran_dt) as Month_, COUNT(th.tran_id) Nos_trans  FROM tran_hdr th
JOIN tran_dtl td ON th.tran_id = td.tran_id 
GROUP BY th.store_id , Month_;

