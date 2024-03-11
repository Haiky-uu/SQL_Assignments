-- 114 Generate a report that shows total sale by member, product and month. 
-- (show member name, product description, month, total_sale on the report.)

USE retail;

SELECT * FROM `member` m;
SELECT * FROM product p;
SELECT * FROM tran_hdr th;
SELECT * FROM tran_dtl td;

SELECT CONCAT(m.first_name," ",m.last_name) as Full_name , p.description as Product_desc, 
MONTH(th.tran_dt) as Month, COUNT(td.tran_id) as Total_sale  FROM tran_hdr th  
JOIN tran_dtl td ON th.tran_id  = td.tran_id 
JOIN `member` m ON th.member_id  = m.member_id 
JOIN product p ON td.product_id  = p.product_id  
GROUP BY th.member_id ,td.product_id,Month 
;

