-- 72 Generate report showing total amount of sales for transaction date 2019-08-12.

use retail;

SELECT SUM(amt) FROM tran_dtl td ;
WHERE tran_dt = '2019-08-12';
