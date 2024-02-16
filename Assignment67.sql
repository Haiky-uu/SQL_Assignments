-- Generate report showing total number of transactions at store 2.

use retail;

SELECT "TOTAL:" as "TOTAL NUMBER OF TRANSATIONS AT STORE 2: ",count(*) as "Transations" FROM tran_hdr th
WHERE store_id = 2;
