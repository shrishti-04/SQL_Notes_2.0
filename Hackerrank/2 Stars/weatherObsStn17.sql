-- Query the Western Longitude (LONG_W)where the smallest Northern Latitude 
-- (LAT_N) in STATION is greater than 38.7780. Round your answer to 4 decimal places.

SELECT TOP 1 ROUND(LONG_W,4) FROM STATION
WHERE LAT_N = (SELECT MIN(LAT_N) FROM STATION
                WHERE LAT_N > 38.7780);

-- -- The ROUND() function rounds a number to the specified number of decimal places.
-- -- The TOP clause is used to specify the number of records to return.
-- -- The MIN() function returns the smallest value of the selected column.

