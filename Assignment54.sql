-- 54 Generate report showing total_sale for each product with product classification 
-- according to total_sale. (product_id,description,total_sale,classification)


USE retail;

SELECT * FROM product p ;

-- using sub queries
SELECT sub.product_id,sub.description,sub.total_sale,
CASE 
	WHEN sub.total_sale < ROUND(avgg.avg_total) THEN 'Minimum sales'
	WHEN sub.total_sale > ROUND(avgg.avg_total) THEN 'Maximum sales'
	ELSE 'Avrarage sales'
END as classification
FROM
(SELECT td.product_id,p.description ,COUNT(*) as total_sale
FROM tran_dtl td
JOIN product p ON td.product_id = p.product_id 
GROUP BY td.product_id)sub
JOIN 
(SELECT AVG(sale.total_sale) as avg_total 
 FROM
(SELECT COUNT(*) as total_sale FROM tran_dtl td 
GROUP BY product_id)sale)avgg;


-- using window function only easy
SELECT sub.product_id,sub.description,sub.total_sale,
CASE 
	WHEN sub.total_sale < AVG(sub.total_sale) OVER() THEN 'Minimum sales'
	WHEN sub.total_sale > AVG(sub.total_sale) OVER() THEN 'Maximum sales'
	ELSE 'Avrarage sales'
END as classification
FROM
(SELECT td.product_id,p.description ,COUNT(*) as total_sale
FROM tran_dtl td
JOIN product p ON td.product_id = p.product_id 
GROUP BY td.product_id)sub

-- getting average
SELECT AVG(sub1.total_sale)
FROM
(SELECT COUNT(tran_id) as total_sale FROM tran_dtl td 
GROUP BY product_id)sub1;



