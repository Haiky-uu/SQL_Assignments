-- 57 Generate a report that shows all columns from member table and one additional hard coded column: value - "online" , column name - "channel"


use retail;

-- SELECT col1,col2,col3, 'hardcoded_value' as 'hardcoded_column' FROM `member` m ;
-- This is how you can hardcode a value and column in existing table 
-- but it is temporary actually it will not affect the real values and columns in tables 
SELECT *, 'Online' as channel FROM `member` m ;
SELECT * FROM `member` m ;