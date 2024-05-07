# Write your MySQL query statement below
select DATE_FORMAT(trans_date, '%Y-%m') AS month, 
country, 
COUNT(id) AS trans_count, 
SUM(CASE when state = 'approved' then 1 else 0 end) AS approved_count,
SUM(amount) AS trans_total_amount, 
SUM(CASE when state = 'approved' then amount else 0 end ) AS approved_total_amount 
FROM transactions
group by DATE_FORMAT(trans_date, '%Y-%m'), country