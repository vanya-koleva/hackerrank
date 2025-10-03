WITH
    ra 
AS (
    SELECT
        name,
        occupation,
        ROW_NUMBER() OVER (PARTITION BY occupation ORDER BY name) AS rn
    FROM
        occupations
)

SELECT
    MAX(CASE WHEN Occupation = 'Doctor' THEN Name END)    AS Doctor,
    MAX(CASE WHEN Occupation = 'Professor' THEN Name END) AS Professor,
    MAX(CASE WHEN Occupation = 'Singer' THEN Name END)    AS Singer,
    MAX(CASE WHEN Occupation = 'Actor' THEN Name END)     AS Actor
FROM
    ra
GROUP BY
    rn
ORDER BY
    rn
;
