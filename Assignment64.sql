-- 64 Generate a report that shows all columns from tran_dtl table with one additional column month_ts - derived as month(tran_dt).
-- Same report should show 12 additional columns as one column per month and amt in the tran_dtl table show appear
-- in the month column it belongs and remaining 11 columns should have zero as value for that row

use retail;

SELECT *,MONTH(tran_dt) as month_ts,
	CASE WHEN MONTH(tran_dt) = 1 THEN amt ELSE 0 END AS JAN,
	CASE WHEN MONTH(tran_dt) = 2 THEN amt ELSE 0 END AS FEB,
	CASE WHEN MONTH(tran_dt) = 3 THEN amt ELSE 0 END AS MAR,
	CASE WHEN MONTH(tran_dt) = 4 THEN amt ELSE 0 END AS APR,
	CASE WHEN MONTH(tran_dt) = 5 THEN amt ELSE 0 END AS MAY,
	CASE WHEN MONTH(tran_dt) = 6 THEN amt ELSE 0 END AS JUNE,
	CASE WHEN MONTH(tran_dt) = 7 THEN amt ELSE 0 END AS JULY,
	CASE WHEN MONTH(tran_dt) = 8 THEN amt ELSE 0 END AS AUG,
	CASE WHEN MONTH(tran_dt) = 9 THEN amt ELSE 0 END AS SEPT,
	CASE WHEN MONTH(tran_dt) = 10 THEN amt ELSE 0 END AS OCTO,
	CASE WHEN MONTH(tran_dt) = 11 THEN amt ELSE 0 END AS NOV,
	CASE WHEN MONTH(tran_dt) = 12 THEN amt ELSE 0 END AS DECM
FROM tran_dtl td 
GROUP BY tran_dt ;





