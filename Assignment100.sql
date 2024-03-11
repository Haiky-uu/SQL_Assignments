-- 100 Generate report showing total number of transaction in which product 17 was purchased.

USE retail;

SELECT * FROM tran_dtl td ;

SELECT COUNT(tran_id), product_id 
FROM tran_dtl td 
WHERE product_id = 17;