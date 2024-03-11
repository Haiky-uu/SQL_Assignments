-- 93 Generate report showing no. of transaction per member.

USE retail;

SHOW tables;

SELECT * FROM tran_hdr th ;

SELECT COUNT(tran_id) , member_id
FROM tran_hdr th 
GROUP BY member_id ;


