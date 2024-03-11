-- 52 Generate report showing number of transaction per member per quarter (member_id,qtr,num_tran)


use retail;

SELECT member_id ,
CASE 
	WHEN MONTH(tran_dt) BETWEEN '1' and '3' THEN "First Quarter"
	WHEN MONTH(tran_dt) BETWEEN '4' and '6' THEN "Second Quarter"
	WHEN MONTH(tran_dt) BETWEEN '7' and '9' THEN "Third Quarter"
	WHEN MONTH(tran_dt) BETWEEN '10' and '12' THEN "Forth Quarter"
END as quarter, COUNT(tran_id) 
FROM tran_hdr thf
GROUP BY quarter,member_id  ;

