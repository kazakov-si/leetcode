/* Write your PL/SQL query statement below */
select q.id, to_char(q.visit_date, 'yyyy-mm-dd') as visit_date, q.people
  from (select s.*,
               lead(s.people) over(order by id) as next1,
               lead(s.people, 2) over(order by id) as next2,
               lag(s.people) over(order by id) as prev1,
               lag(s.people, 2) over(order by id) as prev2
        
          from Stadium s) q
 where (q.people >= 100 and q.next1 >= 100 and q.next2 >= 100)
    or (q.people >= 100 and q.next1 >= 100 and q.prev1 >= 100)
    or (q.people >= 100 and q.prev1 >= 100 and q.prev2 >= 100)
