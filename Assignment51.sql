-- 51 Generate report showing number of transaction per store per quarter (store_id,store_city,qtr,num_tran)

USE retail;

SELECT * FROM store s ;
SELECT * FROM tran_hdr th ;

SELECT th.store_id ,s.store_city ,
CASE 
	WHEN MONTH(tran_dt) BETWEEN 1 and 3 THEN "First Quarter"
	WHEN MONTH(tran_dt) BETWEEN 4 and 6 THEN "Second Quarter"
	WHEN MONTH(tran_dt) BETWEEN 7 and 9 THEN "Third Quarter"
	WHEN MONTH(tran_dt) BETWEEN 10 and 12 THEN "Forth Quarter"
END AS Quarter ,COUNT(tran_id) as No_of_trans
FROM tran_hdr th
JOIN store s ON th.store_id = s.store_id 
GROUP BY th.store_id ,Quarter;





