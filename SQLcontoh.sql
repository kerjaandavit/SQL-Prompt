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