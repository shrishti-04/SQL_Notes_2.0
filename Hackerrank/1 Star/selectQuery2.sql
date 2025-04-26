-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
-- The COUNTRYCODE column in the CITY table contains the country code of the city.
-- The CITY table is a subset of the COUNTRY table.

SELECT NAME FROM CITY
WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;