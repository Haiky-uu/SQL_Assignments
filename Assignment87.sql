-- 87 Generate report showing number of members registered per month per store.

USE retail;

SELECT * FROM `member` m  ;

SELECT  MONTH (reg_date) AS per_Month , store_id AS per_Store, COUNT(member_id) AS 'Number OF Members'
FROM `member` m 
GROUP BY per_Month,per_Store ;



