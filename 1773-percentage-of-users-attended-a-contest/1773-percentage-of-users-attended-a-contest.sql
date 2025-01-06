# Write your MySQL query statement below
SELECT contest_id, 
ROUND((COUNT(DISTINCT r.user_id) / (SELECT COUNT(DISTINCT user_id) FROM Users)) * 100, 2) AS percentage
FROM Users U
RIGHT JOIN Register R
ON U.user_id = R.user_id
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC