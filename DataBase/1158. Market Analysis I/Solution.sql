/* Write your PL/SQL query statement below */
select u.user_id as buyer_id,
       to_char(u.join_date, 'yyyy-mm-dd') as join_date,
       (select count(*)
          from Orders o
         where o.buyer_id = u.user_id
           and to_char(o.order_date, 'yyyy') = 2019) as orders_in_2019
  from users u
 group by u.user_id, u.join_date
