-- 90 Generate report showing no. of members registered per store.

USE retail;

SELECT * FROM `member` m ;

SELECT COUNT(member_id) , store_id 
FROM `member` m 
GROUP BY store_id ;