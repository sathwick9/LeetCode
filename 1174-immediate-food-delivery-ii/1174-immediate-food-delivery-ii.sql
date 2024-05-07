# Write your MySQL query statement below
with cte as
(select *, RANK() OVER(PARTITION BY customer_id ORDER BY order_date) AS order_number, case when order_date = customer_pref_delivery_date then 'immediate' else 'scheduled' end as order_type
from delivery)

SELECT Round(SUM(case when order_type = 'immediate' then 1 else 0 end)/count(*)*100, 2) AS  immediate_percentage
FROM cte
where order_number = 1

