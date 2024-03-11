-- 17 Create new column donor address in donor table.

use retail;

show tables;

ALTER TABLE doner
ADD COLUMN doner_address VARCHAR(255);
