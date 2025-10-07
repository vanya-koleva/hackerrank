SELECT
    DISTINCT city
FROM
    station
WHERE
    city REGEXP '[^aieou]$'
        AND
    city REGEXP '^[^aieou]'
;
