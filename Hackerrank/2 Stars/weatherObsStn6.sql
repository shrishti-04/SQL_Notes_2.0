-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE LEFT(CITY, 1) in ('a', 'e', 'i', 'o', 'u');

-- The LEFT function is used to extract a substring from a string starting from the left side.
-- The IN operator is used to specify multiple values in a WHERE clause.