-- 53 Generate report showing number of transaction per member per store per quarter. (member_id,store_id,qtr,num_tran)


use retail;

SELECT * FROM tran_hdr th ;

SELECT member_id ,store_id ,
CASE 
	WHEN MONTH(tran_dt) BETWEEN 1 and 3 THEN 'First Quarter'
	WHEN MONTH(tran_dt) BETWEEN 4 and 6 THEN 'Second Quarter'
	WHEN MONTH(tran_dt) BETWEEN 7 and 9 THEN 'Third Quarter'
	WHEN MONTH(tran_dt) BETWEEN 10 and 12 THEN 'Forth Quarter'
END as quarter
,COUNT(*) as No_OF_trans 
FROM tran_hdr th
GROUP BY member_id , store_id ,quarter




