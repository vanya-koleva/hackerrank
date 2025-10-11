SELECT
    SUM(ci.population)
FROM
    city AS ci
JOIN (
    SELECT 
        code
    FROM 
        country
    WHERE 
        continent = 'Asia'
) AS co 
ON 
    ci.countrycode = co.code
;
