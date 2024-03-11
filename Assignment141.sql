-- 141 Generate report showing product_id,description,month,monthly_sale,sale_upto_this_month.

use retail;


SELECT sub1.*, 
SUM(Monthly_sale) OVER(ORDER BY sub1.Month_)
FROM 
(SELECT p.product_id , description, MONTH(td.tran_dt) as Month_,
SUM(td.amt) as Monthly_sale
FROM product p
JOIN tran_dtl td ON td.product_id = p.product_id 
GROUP BY Month_)sub1; 

-- Not working properly
SELECT sub2.* ,
SUM(sub2.Full_monthly_sale) OVER(ORDER BY sub2.Month_) as Sale_upto_this_month
FROM
(SELECT sub1.*,
SUM( sub1.Monthly_sale) OVER(ORDER BY sub1.Month_) as Full_monthly_sale
FROM 
(	SELECT p.product_id , description, MONTH(td.tran_dt) as Month_, 
	SUM(td.amt) as Monthly_sale	
	FROM product p
	JOIN tran_dtl td ON td.product_id = p.product_id
	GROUP BY Month_,product_id ,description )sub1)sub2;




