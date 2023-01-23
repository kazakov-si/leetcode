/* Write your PL/SQL query statement below */
select distinct q.num as ConsecutiveNums
from (
select l.id, 
       l.num, 
       lag(num, 1) over (order by id) as lag_1, 
       lag(num, 2) over (order by id) as lag_2
from logs l
)q
where (q.num = lag_1 and q.num = lag_2)
