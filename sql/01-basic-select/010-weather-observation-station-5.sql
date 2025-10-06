SELECT
    city,
    CHAR_LENGTH(city)
FROM
    station
ORDER BY
    CHAR_LENGTH(city) ASC,
    city ASC
LIMIT 1 
;

SELECT
    city,
    CHAR_LENGTH(city)
FROM
    station
ORDER BY
    CHAR_LENGTH(city) DESC,
    city ASC 
LIMIT 1
;
