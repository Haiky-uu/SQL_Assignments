-- 125 Generate report showing total quantity purchased for each product each store.(product_id,description,store_id,store_city,qty)


use Retail;

SELECT * FROM tran_dtl td ;
SELECT * FROM store s ;
SELECT * FROM tran_hdr th ;
SELECT * FROM product p ;

SELECT td.product_id , p.description , s.store_id ,s.store_city ,COUNT(td.qty) as Total_qty_purchased
FROM tran_dtl td 
JOIN tran_hdr th ON td.tran_id=th.tran_id 
JOIN product p ON td.product_id = p.product_id 
JOIN store s ON th.store_id = s.store_id 
GROUP BY td.product_id , s.store_id ;