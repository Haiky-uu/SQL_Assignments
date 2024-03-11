-- 137 Generate report showing number of members registered per store per quarter.
-- (store_id,store_city,qtr1_reg,qtr2_reg,qtr3_reg,qtr4_reg)

use Retail_pro;

SHOW tables;


SELECT sub1.store_id,
MAX(CASE 
	WHEN Month_ BETWEEN 1 AND 3 THEN members ELSE 0  
END) as qtr1_reg,
MAX(CASE 
	WHEN Month_ BETWEEN 4 AND 6 THEN members ELSE 0
END) as qtr2_reg,
MAX(CASE 
	WHEN Month_ BETWEEN 7 AND 9 THEN members ELSE 0
END) as qtr3_reg,
MAX(CASE 
	WHEN Month_ BETWEEN 10 AND 12 THEN members ELSE 0
END) qtr4_reg
FROM 
(SELECT th.store_id, /*s.store_city,*/ MONTH(td.trans_date) as Month_,COUNT(th.member_id) as members  FROM trans_dtl td 
JOIN trans_hdr th ON td.trans_id = th.trans_id 
-- JOIN store s ON th.store_id = s.store_id
GROUP BY th.store_id,Month_)sub1
GROUP BY sub1.store_id ;

use retail;

SELECT sub1.store_id,sub1.store_city,
MAX(CASE 
	WHEN Month_ BETWEEN 1 AND 3 THEN members ELSE 0  
END) as qtr1_reg,
MAX(CASE 
	WHEN Month_ BETWEEN 4 AND 6 THEN members ELSE 0
END) as qtr2_reg,
MAX(CASE 
	WHEN Month_ BETWEEN 7 AND 9 THEN members ELSE 0
END) as qtr3_reg,
MAX(CASE 
	WHEN Month_ BETWEEN 10 AND 12 THEN members ELSE 0
END) qtr4_reg
FROM 
(SELECT th.store_id, s.store_city, MONTH(td.tran_dt) as Month_,COUNT(th.member_id) as members  FROM tran_dtl td 
JOIN tran_hdr th ON td.tran_id = th.tran_id 
JOIN store s ON th.store_id = s.store_id
GROUP BY th.store_id,Month_)sub1
GROUP BY sub1.store_id;
