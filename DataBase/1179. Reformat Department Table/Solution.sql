/* Write your PL/SQL query statement below */
select *
from department d
pivot
(
     sum(d.revenue)
     for month in ('Jan' as Jan_revenue, 
                   'Feb' as Feb_revenue, 
                   'Mar' as Mar_Revenue, 
                   'Apr' as Apr_revenue, 
                   'May' as May_revenue, 
                   'Jun' as Jun_revenue,
                   'Jul' as Jul_revenue,
                   'Aug' as Aug_revenue,
                   'Sep' as Sep_revenue,
                   'Oct' as Oct_revenue,
                   'Nov' as Nov_revenue,
                   'Dec' as Dec_revenue
                  )
)
