-- 80 Generate report showing monthly sale for each month.

USE retail;

SELECT * FROM tran_dtl td ; 

SELECT MONTH(tran_dt), SUM(amt)  FROM tran_dtl td 
GROUP BY MONTH(tran_dt)  ;

/* SELECT SUM(amt) FROM tran_dtl td 
WHERE MONTH(tran_dt) = 1;*/
