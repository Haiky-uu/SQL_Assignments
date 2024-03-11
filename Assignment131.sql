-- 131 Generate report showing number of product per category according to product classification.(category,high_value,med_value,low_value,total_products)

use retail;

SELECT sub2.category,
CASE WHEN sub2.tprice > sub2.avg_t THEN sub2.tprice END AS "high_value",
CASE WHEN sub2.tprice = sub2.avg_t THEN sub2.tprice END AS "mid_value",
CASE WHEN sub2.tprice < sub2.avg_t THEN sub2.tprice END AS "low_value",
FROM  
(SELECT sub1.*, AVG(sub1.tprice)as avg_t 
FROM 
(SELECT category,count(product_id) as total_pro,price,SUM(p.price) as tprice  
FROM product p 
GROUP BY category)sub1
GROUP BY sub1.category)sub2
GROUP BY sub2.category;



SELECT p.category,
MAX(p.price) OVER(PARTITION BY p.category) as high_value,
(MAX(p.price) OVER(PARTITION BY p.category)+MIN(p.price) OVER(PARTITION BY p.category))/2 as mid_value,
MIN(p.price) OVER(PARTITION BY p.category) as low_value,
COUNT(p.product_id) OVER (PARTITION BY p.category) as total_pro 
FROM product p ;
