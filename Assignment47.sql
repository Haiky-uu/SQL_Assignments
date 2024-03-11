-- 47 Generate report showing product table with one added column prod_cat that classifies product with average price of all products.
-- (greater & smaller than avg_price )

use retail;

SELECT * FROM product p ;

SELECT *,
CASE 
	WHEN price > (SELECT AVG(price) FROM product p ) THEN 'Greater than avg price'
	ELSE 'Smaller than avg price'
END as prod_cat
FROM product p ;

