/* Write your PL/SQL query statement below */
select u.name, sum(nvl(r.distance, 0)) as travelled_distance
  from users u
left join rides r
    on  u.id = r.user_id
group by u.id, u.name
order by 2 desc, 1 asc
