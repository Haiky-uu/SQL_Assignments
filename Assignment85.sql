-- 85 Generate report showing total number of transactions per member per month.

USE retail;

SELECT * FROM tran_hdr th  ;

SELECT member_id , COUNT(tran_id) AS "No of Trans per member", MONTH(tran_dt)  AS 'MONTH' 
FROM tran_hdr th 
GROUP BY member_id ,MONTH
ORDER BY MONTH;