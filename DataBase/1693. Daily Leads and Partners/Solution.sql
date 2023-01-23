/* Write your PL/SQL query statement below */
select to_char(ds.date_id) as date_id, 
       ds.make_name, 
       count(distinct lead_id) as unique_leads, 
       count(distinct partner_id) as unique_partners
from dailysales ds
group by ds.date_id, ds.make_name
