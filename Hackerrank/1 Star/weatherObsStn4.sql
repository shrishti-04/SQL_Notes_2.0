-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.

SELECT COUNT(CITY) - COUNT(DISTINCT CITY) AS DIFF
FROM STATION;

-- The COUNT function is used to count the number of rows in a table or the number of non-null values in a column.
-- The DISTINCT keyword is used to return only distinct (different) values in the result set.
-- The AS keyword is used to rename a column or table with an alias.