-- 143 Generate report showing store_id,month,total_monthly_sale,rank_month.(highest sale – Rank  1)


use retail;

-- best practice
SELECT sub1.*,
RANK() OVER(ORDER BY sub1.Total_monthly_sale DESC)
FROM 
(SELECT MONTH(tran_dt) as Month_, SUM(amt) as Total_monthly_sale FROM tran_dtl td 
GROUP BY Month_)sub1;

-- not best practice
SELECT MONTH(tran_dt) as Month_, SUM(amt) as total_monthly_sale,
RANK() OVER(ORDER BY total_monthly_sale DESC)
FROM tran_dtl td 
GROUP BY Month_
ORDER BY total_monthly_sale DESC;