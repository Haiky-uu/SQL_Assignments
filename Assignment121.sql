-- 121 Generate report showing total number of transactions per store.(store_id,store_city,num_tran in descending order)

USE retail;

SELECT * FROM store s ;
SELECT * FROM product p ;
SELECT * FROM tran_hdr th ;

SELECT th.store_id ,s.store_city , COUNT(tran_id) AS No_of_trans
FROM tran_hdr th 
JOIN store s ON th.store_id = s.store_id 
GROUP BY th.store_id
ORDER BY No_of_trans DESC;