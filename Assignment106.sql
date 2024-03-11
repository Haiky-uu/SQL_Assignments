-- 106 Generate report showing tran_dtl table only for those products which had
-- ‘chee’ in their description.


use retail;

SELECT * FROM tran_dtl td 
WHERE product_id IN 
(SELECT product_id  FROM product p 
WHERE description  LIKE '%chee%');

SELECT * FROM product p 
WHERE description LIKE '%chee%';