-- Query a list of CITY names from STATION for cities that have an even ID number. 
-- Print the results in any order, but exclude duplicates from the answer.

SELECT DISTINCT CITY FROM STATION
WHERE MOD(CITY, 2) = 0;
-- The MOD function is used to find the remainder of the division of CITY by 2.