-- 140 Generate report showing product_id,description,month,monthly_sale,previous_month_sale.


use retail;
SELECT * FROM product p ;
SELECT * FROM tran_dtl td ;

-- Monthly sale order by month and by description
SELECT sub1.product_id, sub1.description, sub1.Month_, sub1.Monthly_sale,
LAG(sub1.Monthly_sale) OVER(PARTITION BY sub1.product_id ORDER BY sub1.Month_) as prev_month_sale 
FROM 
(SELECT td.product_id, description, MONTH(tran_dt) as Month_, 
SUM(amt)  as Monthly_sale 
FROM tran_dtl td
JOIN product p ON td.product_id = p.product_id 
GROUP BY product_id, description,Month_)sub1;

-- Monthly sale order by months only
SELECT sub1.*,
LAG (sub1.Monthly_sale) OVER(ORDER BY sub1.Month_ )
FROM (
SELECT p.product_id , description, MONTH(td.tran_dt) as Month_, 
sum(td.amt) as Monthly_sale
FROM product p
JOIN tran_dtl td ON p.product_id = td.product_id 
GROUP BY Month_)sub1;


