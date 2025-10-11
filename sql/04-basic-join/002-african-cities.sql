SELECT
    ci.name
FROM
    city AS ci
JOIN (
    SELECT 
        code
    FROM
        country
    WHERE
        continent = 'Africa'
) AS co
ON
    ci.countrycode = co.code
;
