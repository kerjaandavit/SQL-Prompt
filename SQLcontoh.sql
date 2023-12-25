-- Command 1
SELECT post_id, (CAST(actions AS DECIMAL) / impressions * 100) AS popularity
FROM linkedin_posts
WHERE (CAST(actions AS DECIMAL) / impressions * 100) >= 1.0
ORDER BY popularity DESC;


-- Command 2
SELECT First_Name
FROM users
WHERE User_ID IN (
    SELECT User_ID
    FROM user_time
    WHERE Media_Time_Minutes > (
        SELECT AVG(Media_Time_Minutes)
        FROM user_time
    )
)
ORDER BY First_Name;

-- Command 3
SELECT candidate_id
FROM candidates
WHERE sql_experience = 'X'
  AND (python = 'X' OR r_programming = 'X')
  AND problem_solving = 'X'
  AND domain_knowledge = 'X'
ORDER BY candidate_id;
