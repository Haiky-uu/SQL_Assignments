-- 101 Genrate report showing total no of transactions per month

USE retail;

SELECT * FROM tran_dtl td ;

SELECT MONTH(tran_dt) AS Month, COUNT(tran_id) 
FROM tran_dtl td 
GROUP BY Month;