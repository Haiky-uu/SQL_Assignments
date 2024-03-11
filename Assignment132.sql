-- 132 Generate report showing number of transactions per member for each quarter.(member_id,qtr1,qtr2,qtr3,qtr4,total_tran)


use Retail_pro;

SELECT sub1.member_id,
MAX(CASE 
	WHEN Month_ BETWEEN 1 AND 3 THEN total
END) as qtr1,
MAX(CASE 
	WHEN Month_ BETWEEN 4 AND 6 THEN total
END) as qtr2,
MAX(CASE 
	WHEN Month_ BETWEEN 7 AND 9 THEN total	
END )as qtr3,
MAX(CASE 
	WHEN Month_ BETWEEN 10 AND 12 THEN total
END) as qtr4
FROM 
(SELECT member_id , COUNT(trans_id) as total, MONTH(th.trans_date) as Month_ 
FROM trans_hdr th
GROUP BY member_id,Month_)sub1
GROUP BY sub1.member_id;