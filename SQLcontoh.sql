-- Prompt 1
SELECT post_id, (CAST(actions AS DECIMAL) / impressions * 100) AS popularity
FROM linkedin_posts
WHERE (CAST(actions AS DECIMAL) / impressions * 100) >= 1.0
ORDER BY popularity DESC;


-- Prompt 2
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
