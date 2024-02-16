-- 80 Generate report showing monthly sale for each month.

USE retail;

SELECT tran_dt ,SUM(amt)  FROM tran_dtl td 
GROUP BY MONTH(tran_dt);









