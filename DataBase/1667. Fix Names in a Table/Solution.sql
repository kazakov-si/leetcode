/* Write your PL/SQL query statement below */
select u.user_id, upper(substr(u.name, 1, 1)) || lower(substr(u.name, 2)) as name from Users u
order by u.user_id
