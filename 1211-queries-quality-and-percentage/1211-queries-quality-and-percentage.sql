# Write your MySQL query statement below


select query_name, Round(avg(rating/position), 2) as quality, 
Round(SUM(CASE when rating<3 THEN 1 ELSE 0 END)/ COUNT(*) * 100, 2) as poor_query_percentage
from queries 
group by query_name