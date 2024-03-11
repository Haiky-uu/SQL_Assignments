-- 112 Generate report that shows number of transactions per member per store. (Show member name and store city).

use retail;
show tables;

SELECT * FROM store s ;
SELECT * FROM `member` m ;
SELECT * FROM tran_hdr th ;

SELECT CONCAT(first_name,' ', last_name) as full_name  FROM `member` m ;

-- Query
SELECT CONCAT(m.first_name ,' ',m.last_name) AS Full_NAME ,s.store_city  , th.store_id , COUNT(tran_id)  
FROM tran_hdr th 
JOIN `member` m ON th.member_id = m.member_id 
JOIN store s ON th.store_id = s.store_id 
GROUP BY th.member_id , th.store_id 
ORDER BY Full_Name;

-- Using Sub-Query
SELECT sub1.full_name,store_city,sub1.store_id,sub1.trans
FROM 
(SELECT CONCAT(first_name,' ',last_name) as full_name , th.store_id , COUNT(tran_id) as trans  FROM tran_hdr th JOIN `member` m ON th.member_id = m.member_id  
GROUP BY th.member_id ,th.store_id )sub1 JOIN store s ON sub1.store_id=s.store_id 
ORDER BY full_name;

