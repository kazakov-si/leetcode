/* Write your PL/SQL query statement below */
select distinct p.product_id, p.product_name
   from product p, sales s
  where p.product_id = s.product_id
    and s.sale_date between '2019-01-01' and '2019-03-31'
    and p.product_id not in (select product_Id
                               from sales s
                         where p.product_id = s.product_id
                           and s.sale_date > '2019-03-31' or s.sale_date < '2019-01-01')
