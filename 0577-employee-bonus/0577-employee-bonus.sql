# Write your MySQL query statement below
select e.name, b.bonus from employee e 
left join bonus b
on e.empID = b.empID
where ifnull(bonus, 0)<1000 ;