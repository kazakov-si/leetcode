/* Write your PL/SQL query statement below */
select to_char(e.event_day, 'YYYY-MM-DD') as day, e.emp_id, sum(e.out_time - e.in_time) as total_time
from Employees e 
group by e.event_day, e.emp_id
