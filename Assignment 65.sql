-- same query as row 64 for quarter 

USE retail;
SELECT * ,MONTH (tran_dt) as "MONTH NO" ,
CASE
WHEN MONTH(tran_dt) BETWEEN 1 and 3 THEN 'q1'
 WHEN  MONTH(tran_dt) BETWEEN 4 and 6 THEN 'q2'
 WHEN MONTH(tran_dt) BETWEEN 7 and 9 THEN 'q3'
 WHEN MONTH(tran_dt) BETWEEN 10 and 12 THEN 'q4'
END AS 'Qurter' FROM  tran_dtl td ;

SELECT  * , QUARTER(tran_dt) as Quarter from tran_dtl td ; 