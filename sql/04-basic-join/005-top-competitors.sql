SELECT
    h.hacker_id,
    h.name
FROM
    hackers AS h
JOIN (
    SELECT
        s.hacker_id,
        COUNT(DISTINCT s.challenge_id) AS max_score_challenges
    FROM
        submissions AS s
    JOIN
        challenges AS c 
    ON
        s.challenge_id = c.challenge_id
    JOIN
        difficulty AS d 
    ON
        c.difficulty_level = d.difficulty_level
    WHERE
        s.score = d.score
    GROUP BY
        s.hacker_id
    HAVING
        max_score_challenges >1
) AS f
ON
    h.hacker_id = f.hacker_id
ORDER BY
    f.max_score_challenges DESC,
    h.hacker_id
;
