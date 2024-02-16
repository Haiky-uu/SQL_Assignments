-- Generate report showing average price for baked goods category.


use retail;
SELECT AVG(price)  FROM product p 
WHERE category = 'Baked goods';