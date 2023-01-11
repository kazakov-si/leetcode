# Write your MySQL query statement below
select t.name as customers
  from customers t
 where not exists (select 1 from orders o where o.customerId = t.id)
