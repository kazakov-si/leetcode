/* Write your PL/SQL query statement below */
select q.name, q.balance
from (
select u.name, 
       SUM(amount) as balance
from users u, transactions t
where u.account = t.account
group by u.name)q
where q.balance > 10000
