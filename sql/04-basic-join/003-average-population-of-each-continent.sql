SELECT
    co.continent,
    FLOOR(AVG(ci.population))
FROM
    city AS ci
JOIN
    country AS co
ON
    ci.countrycode = co.code
GROUP BY
    co.continent
;
