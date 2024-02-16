-- 71 Generate report showing max price for frozen category.

use retail;
SELECT MAX(price) FROM product p 
WHERE category = "FROZEN";
