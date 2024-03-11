-- 56 Generate report showing total sale for each category each qtr
-- (category,qtr,total_sale)

use retail;

SELECT category , 
CASE 
	WHEN MONTH(td.tran_dt) BETWEEN 1 and 3 THEN 'First Quarter'
	WHEN MONTH(td.tran_dt) BETWEEN 4 and 6 THEN 'Second Quarter'
	WHEN MONTH(td.tran_dt) BETWEEN 7 and 9 THEN 'Third Quarter'
	WHEN MONTH(td.tran_dt) BETWEEN 10 and 12 THEN 'Forth Quarter'
END as qtr, COUNT(td.tran_id) as total_sale 
FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id
GROUP BY p.category ,qtr;

