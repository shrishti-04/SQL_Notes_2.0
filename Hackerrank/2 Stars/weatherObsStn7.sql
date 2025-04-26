-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.

SELECT DISTINCT CITY FROM STATION
WHERE RIGHT(CITY, 1) in ('a', 'e', 'i', 'o', 'u');

-- The RIGHT function is used to extract a substring from a string, starting from the right side.
-- In this case, it is used to get the last character of the CITY name.