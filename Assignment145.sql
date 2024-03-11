-- 145 Generate report showing member_id,month,total_sale,last_3 month_total sale.


use retail;


SELECT 
CONCAT(sub1.Year_,'-',LPAD(sub1.Month_,2,'0')) as Year_Months, 
sub1.*,
LAG(sub1.total_sale,1) OVER(ORDER BY sub1.Year_,sub1.Month_) as last_1_month_s,
LAG(sub1.total_sale,2) OVER(ORDER BY sub1.Year_,sub1.Month_) as last_2_month_s,
LAG(sub1.total_sale,3) OVER(ORDER BY sub1.Year_,sub1.Month_) as last_3_month_s
FROM 
(	SELECT YEAR(td.tran_dt) as Year_,MONTH(td.tran_dt) as Month_, SUM(td.amt) as total_sale  FROM tran_dtl td 
	-- JOIN tran_hdr th ON td.tran_id = th.tran_id 
	GROUP BY Year_,Month_)sub1;

SELECT SUM(amt) FROM tran_dtl td ;


WITH sud AS(
SELECT YEAR(td.tran_dt) as Year_, MONTH(td.tran_dt) as Month_, SUM(td.amt) as total
FROM tran_dtl td
GROUP BY Year_ , Month_
)
SELECT 
*,
LAG(total,1) OVER(ORDER BY Year_,Month_) as 1_month_s,
LAG(total,2) OVER(ORDER BY Year_,Month_)as 2_month_s,
LAG(total,3) OVER (ORDER BY Year_,Month_) as 3_month_s
FROM sud;


-- Working on reatil project
use Retail_pro;

SELECT 
sub1.member_id,
CONCAT(sub1.Year_,'-',LPAD(sub1.Month_,2,'0')) as Year_Months, 
sub1.Year_,
sub1.Month_,
sub1.total_sale,
LAG(sub1.total_sale,1) OVER(PARTITION BY sub1.member_id ORDER BY sub1.Year_,sub1.Month_) as last_1_month_s,
LAG(sub1.total_sale,2) OVER(PARTITION  BY sub1.member_id ORDER BY sub1.Year_,sub1.Month_) as last_2_month_s,
LAG(sub1.total_sale,3) OVER(PARTITION BY sub1.member_id ORDER BY sub1.Year_,sub1.Month_) as last_3_month_s
FROM 
(	SELECT th.member_id,YEAR(td.trans_date) as Year_,MONTH(td.trans_date) as Month_, SUM(td.amount) as total_sale  FROM trans_dtl td 
	JOIN trans_hdr th ON td.trans_id = th.trans_id 
	GROUP BY th.member_id,Year_,Month_)sub1;
