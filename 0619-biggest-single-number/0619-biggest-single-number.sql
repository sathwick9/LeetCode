# Write your MySQL query statement below
with cte as
(select * from mynumbers group by num having count(num) = 1 )

select max(num) as num from cte

-- select max(num) as num from (select num from mynumbers group by num having count(num) = 1 ) as sing_num