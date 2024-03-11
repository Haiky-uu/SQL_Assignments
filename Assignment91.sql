-- 91 Generate report showing no. of members registered per store per month.

USE retail;

SELECT * FROM `member` m ;

SELECT store_id , MONTH(reg_date) AS Month, COUNT(member_id) 
FROM `member` m 
GROUP BY store_id , Month ;