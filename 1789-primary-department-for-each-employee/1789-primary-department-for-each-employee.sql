# Write your MySQL query statement below
-- select employee_id, department_id from employee 
-- where primary_flag = 'Y'
-- Union
-- select employee_id, department_id from employee
-- group by employee_id 
-- having count(employee_id) = 1
-- order by employee_id

select employee_id, department_id from 
(select employee_id, department_id,primary_flag,count(department_id) over(partition by employee_id) as cnt from employee ) dept where cnt = 1 or primary_flag = 'Y'