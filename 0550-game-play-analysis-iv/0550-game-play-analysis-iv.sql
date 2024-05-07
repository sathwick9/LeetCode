# Write your MySQL query statement below
-- SELECT
--   ROUND(COUNT(DISTINCT player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
-- FROM
--   Activity
-- WHERE
--   (player_id, DATE_SUB(event_date, INTERVAL 1 DAY))
--   IN (
--     SELECT player_id, MIN(event_date) AS first_login FROM Activity GROUP BY player_id
--   )


SELECT Round(count(distinct b.player_id)/count(distinct a.player_id), 2) AS fraction FROM 
(Select player_id, MIN(event_date) as event_date from activity 
group by player_id) a LEFT JOIN activity b on a.player_id = b.player_id 
and a.event_date+1 = b.event_date 