-- A median is defined as a number separating the higher half of a data set 
-- from the lower half. Query the median of the Northern Latitudes (LAT_N) from 
-- STATION and round your answer to  decimal places.

SELECT ROUND(AVG(LAT_N), 4) AS LAT_N_MED
FROM (SELECT LAT_N, 
    ROW_NUMBER() OVER (ORDER BY LAT_N) AS RN,
    COUNT(*) OVER () AS TOTAL
    FROM STATION) AS SUB
    WHERE RN = (TOTAL + 1) / 2
    OR
    RN IN (TOTAL/2, (TOTAL + 1) / 2);