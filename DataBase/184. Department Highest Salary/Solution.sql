/* Write your PL/SQL query statement below */
select q.department, q.employee, salary
from ( 
select d.id, d.name as department, e.name as employee, e.salary, rank() over (partition by departmentId order by salary desc) as rnk
from Employee e, department d
where e.departmentId = d.id)q
where q.rnk = 1
