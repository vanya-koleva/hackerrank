WITH ordered AS (
    SELECT 
        lat_n,
        ROW_NUMBER() OVER (ORDER BY lat_n) AS rn,
        COUNT(*) OVER () AS total_count
    FROM
        station
)

SELECT 
    ROUND(AVG(lat_n), 4) AS median
FROM 
    ordered
WHERE 
    rn IN (FLOOR((total_count + 1) / 2), CEIL((total_count + 1) / 2))
;
