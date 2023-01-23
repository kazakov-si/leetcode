/* Write your PL/SQL query statement below */
select to_char(a.activity_date) as day, 
        count(distinct user_id) as active_users
from Activity a
where a.activity_date between to_date('2019-07-27', 'yyyy-mm-dd')-29 and to_date('2019-07-27', 'yyyy-mm-dd')
group by a.activity_date
