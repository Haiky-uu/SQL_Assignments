-- 146 Generate report showing store_id,month,total_sale,prev_3 month_avg sale.

use Retail_pro;

WITH sud as(
SELECT th.store_id , YEAR(td.trans_date) as Year_, MONTH(td.trans_date) as Month_,  SUM(td.amount) as total_sale, AVG(td.amount) as avg_amt
FROM trans_dtl td
JOIN trans_hdr th ON td.trans_id = th.trans_id 
GROUP BY store_id,Year_,Month_
)
SELECT 
CONCAT(Year_, '-', LPAD(Month_,2,'0')) AS Y_M,
sud.*,
LAG(avg_amt,1) OVER(PARTITION BY store_id ORDER BY Year_,Month_) as prev_m_1,
LAG(avg_amt,2) OVER(PARTITION BY store_id ORDER BY Year_,Month_) as prev_m_2,
LAG(avg_amt,3) OVER(PARTITION BY store_id ORDER BY Year_,Month_)
FROM sud;


SELECT 
CONCAT(sub1.Year_,'-',LPAD(sub1.Month_,2,'o')) as Y_M,
sub1.*,
LAG(avg_amt,1) OVER(PARTITION BY store_id ORDER BY Year_,Month_) as prev_m_1,
LAG(avg_amt,2) OVER(PARTITION BY store_id ORDER BY Year_,Month_) as prev_m_2,
LAG(avg_amt,3) OVER(PARTITION BY store_id ORDER BY Year_,Month_)
FROM
(SELECT th.store_id , YEAR(td.trans_date) as Year_, MONTH(td.trans_date) as Month_,  SUM(td.amount) as total_sale , AVG(td.amount) as avg_amt
FROM trans_dtl td
JOIN trans_hdr th ON td.trans_id = th.trans_id 
GROUP BY store_id,Year_,Month_)sub1;
