-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
-- The COUNTRYCODE column in the CITY table contains the country code of the city.
-- The CITY table is a subset of the COUNTRY table.

SELECT * FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;