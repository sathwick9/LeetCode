# Write your MySQL query statement below
SELECT id, movie, description, rating from cinema where MOD(id, 2)<>0 and rating > 7
order by rating desc