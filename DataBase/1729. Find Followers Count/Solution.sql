/* Write your PL/SQL query statement below */
select f.user_id, count(distinct f.follower_id) as followers_count
from Followers f
group by f.user_id
order by 1
