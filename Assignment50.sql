-- 50 Generate report showing number of transaction per quarter (qtr_name,num_tran)

SELECT * FROM tran_dtl td ;

SELECT *,
	CASE
		WHEN MONTH(tran_dt) BETWEEN 1 AND 3 THEN 'First Quartar'	
		WHEN MONTH(tran_dt) BETWEEN 4 AND 6 THEN 'Second Quartar'	
		WHEN MONTH(tran_dt) BETWEEN 7 AND 9 THEN 'Third Quartar'	
		WHEN MONTH(tran_dt) BETWEEN 10 AND 12 THEN 'Forth Quartar'	
	END as quarter
	,COUNT(tran_id) AS no_of_trans
FROM tran_dtl td 
GROUP BY quarter;

