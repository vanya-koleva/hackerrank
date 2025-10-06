SELECT
    c.company_code,
    c.founder,
    COUNT(DISTINCT l.lead_manager_code),
    COUNT(DISTINCT s.senior_manager_code),
    COUNT(DISTINCT m.manager_code),
    COUNT(DISTINCT e.employee_code)
FROM
    company AS c
LEFT JOIN
    lead_manager AS l
USING
    (company_code)
LEFT JOIN
    senior_manager AS s
USING
    (company_code)
LEFT JOIN
    manager AS m
USING
    (company_code)
LEFT JOIN
    employee AS e
USING
    (company_code)
GROUP BY
    c.company_code,
    c.founder
ORDER BY
    c.company_code
;
