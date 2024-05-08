-- # Write your MySQL query statement below
select activity_date as day, count(Distinct user_id) as active_users from activity 
where activity_date between Date_add('2019-07-27', interval -29 DAY) and '2019-07-27'
group by activity_date

-- select distinct activity_date as day,count(distinct user_id)  as active_users
-- from Activity 
-- where activity_date between '2019-06-28' and '2019-07-27'
-- group by activity_date