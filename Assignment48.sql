-- 48 Generate report showing classification of member based on number of products(in quantity) purchased by him 
-- (member_id,total_qty_prod,classification)

use retail;

DESCRIBE tran_dtl ;
DESCRIBE tran_hdr ;

SELECT * FROM product p ;
SELECT * FROM tran_dtl td ;


SELECT member_id , qty as total_qty_prod ,
CASE
	WHEN qty <= 2 THEN "Less Purchased"
	WHEN qty <= 4 THEN "Medium Purchased"
	ELSE "Mostly Purchased"
END AS classification
FROM tran_hdr th 
JOIN tran_dtl td  ON th.tran_id = td.tran_id 
GROUP BY th.member_id ;

