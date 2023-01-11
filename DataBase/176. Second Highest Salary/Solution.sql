/* Write your PL/SQL query statement below */
select max(salary) as SecondHighestSalary
  from (select e.salary, row_number() OVER(ORDER BY salary desc) AS rating
          from Employee e
         group by e.salary)
 where rating = 2
