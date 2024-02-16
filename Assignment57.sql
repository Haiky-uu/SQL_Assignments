-- Generate a report that shows all columns from member table and one additional hard coded 
-- column: value - "online" , column name - "channel" 
use retail;

SELECT *,'online' as 'channel' FROM `member` m ;
