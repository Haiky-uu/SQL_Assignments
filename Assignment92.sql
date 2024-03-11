-- 92 Generate report showing no. of products per category.

use retail;

SELECT category ,COUNT(product_id) as no_of_products  FROM product p 
GROUP BY category ;
