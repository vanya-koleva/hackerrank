SELECT
    CEIL(
        ABS(
            AVG(salary) 
                -
            AVG(CAST(REPLACE(CAST(salary AS CHAR), 0, '') AS UNSIGNED))
        )
    )
FROM
    employees
;
