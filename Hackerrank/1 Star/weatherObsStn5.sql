-- -- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths 
-- (i.e.: number of characters in the name). If there is more than one smallest or largest city, 
-- choose the one that comes first when ordered alphabetically.

SELECT CITY, LENGTH(CITY) AS CITY_LEN
FROM STATION
ORDER BY CITY_LEN, CITY ASC
LIMIT 1;

SELECT CITY, LENGTH(CITY) AS CITY_LEN
FROM STATION
ORDER BY CITY_LEN, CITY DESC
LIMIT 1;

-- -- The ORDER BY clause is used to sort the result set in ascending or descending order.
-- -- The LIMIT clause is used to specify the maximum number of records to return.
-- -- The LENGTH function is used to return the length of a string in characters.