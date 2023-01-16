/* Write your PL/SQL query statement below */
select e.employee_id
from Employees e
where not exists (select 1
from Salaries s
where e.employee_id = s.employee_id)
union
select s.employee_id
from Salaries s
where not exists (select 1
from Employees e
where s.employee_id = e.employee_id)
