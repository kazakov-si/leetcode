/* Write your PL/SQL query statement below */
select sp.name
  from SalesPerson sp
where not exists (select 1
                    from orders o, company c
                   where o.sales_id = sp.sales_id
                         --
                     and o.com_id = c.com_id
                     and c.name = 'RED')
