/* Write your PL/SQL query statement below */
select s.score, 
       dense_rank() OVER (ORDER BY score desc) as rank
from scores s
order by rank
