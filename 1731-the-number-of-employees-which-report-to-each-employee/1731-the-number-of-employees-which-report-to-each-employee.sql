# Write your MySQL query statement below

-- select mgr.employee_id, mgr.name, COUNT(emp.employee_id) as reports_count, ROUND(AVG(emp.age)) as average_age
-- from employees emp join employees mgr
-- on emp.reports_to = mgr.employee_id
-- group by employee_id
-- order by employee_id

with cte as 
(select reports_to, count(employee_id) as reports_count, Round(avg(age), 0) as average_age
from employees
where reports_to is not null
group by reports_to) 

select c.reports_to as employee_id, e.name, c.reports_count, c.average_age
from cte c left join employees e
on c.reports_to = e.employee_id
order by employee_id