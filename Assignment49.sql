-- 49 Generate report showing tran_dtl table with one additional column quarter showing quarter of tran_dt.


use retail;

SELECT * FROM tran_dtl td ;

SELECT MONTH(tran_dt) FROM tran_dtl td ;

SELECT *,
CASE 
	WHEN MONTH(tran_dt) BETWEEN 1 AND 3 THEN "First Qurter"
	WHEN MONTH(tran_dt) BETWEEN 4 AND 6 THEN "Second Qurter"
	WHEN MONTH(tran_dt) BETWEEN 7 AND 9 THEN "Third Qurter"
	WHEN MONTH(tran_dt) BETWEEN 10 AND 12 THEN "Forth Qurter"
END as Qurter
FROM tran_dtl td 
GROUP BY tran_dt ;


