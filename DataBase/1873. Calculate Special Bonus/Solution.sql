/* Write your PL/SQL query statement below */
select e.employee_id as employee_id, 
       case when (mod(e.employee_id, 2) = 0 or e.name like 'M%') then 0  else e.salary end bonus
from Employees e
order by e.employee_id
