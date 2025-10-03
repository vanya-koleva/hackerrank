SELECT
    CASE
        WHEN a + b <= c THEN 'Not A Triangle'
        WHEN a = b AND a = c THEN 'Equilateral'
        WHEN a = b OR a = c OR b = c THEN 'Isosceles'
        ELSE 'Scalene'
    END   
FROM
    triangles
;

