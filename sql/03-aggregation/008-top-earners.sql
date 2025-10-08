SELECT
    CONCAT(
        total_earnings,
        ' ',
        num_employees
    )
FROM (
    SELECT
        MAX(salary * months) AS total_earnings,
        COUNT(*) AS num_employees
    FROM
        employee
    WHERE
        salary * months = (
            SELECT 
                MAX(salary * months)
            FROM
                employee
        )
) AS t
;
