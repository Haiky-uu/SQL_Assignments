-- 65 Generate a report that shows all columns from tran_dtl table with one additional column month_ts - derived as month(tran_dt).
-- Same report should show 4 additional columns as one column per quarter and amt in the tran_dtl table show appear
-- in the quarter column it belongs and remaining 3 columns should have zero as value for that row

use retail;

SELECT * FROM tran_dtl td ;

SELECT * , MONTH(tran_dt) as month_ts ,
CASE WHEN MONTH(tran_dt) BETWEEN 1 and 3 THEN amt ELSE 0 END AS Quarter1,
CASE WHEN MONTH(tran_dt) BETWEEN 4 and 6 THEN amt ELSE 0 END AS Quarter2,
CASE WHEN MONTH(tran_dt) BETWEEN 7 and 9 THEN amt ELSE 0 END AS Quarter3,
CASE WHEN MONTH(tran_dt) BETWEEN 10 and 12 THEN amt ELSE 0 END AS Quater4
FROM tran_dtl td 
GROUP BY tran_dt