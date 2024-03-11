-- 55 Generate report showing total sale for each product each qtr 
-- (product_id,description,qtr,total_sale)

use retail;

SELECT td.product_id ,p.description ,
CASE 
	WHEN MONTH(td.tran_dt) BETWEEN 1 and 3 THEN "First Quarter"
	WHEN MONTH(td.tran_dt) BETWEEN 4 and 6 THEN "Second Quarter"
	WHEN MONTH(td.tran_dt) BETWEEN 7 and 9 THEN 'Third Quarter'
	WHEN MONTH(td.tran_dt) BETWEEN 10 and 12 THEN "Forth Quarter"
END as qtr,
COUNT(tran_id) as total_sale  FROM tran_dtl td 
JOIN product p ON td.product_id = p.product_id 
GROUP by td.product_id, qtr ;
