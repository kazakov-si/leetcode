/* Write your PL/SQL query statement below */
select *
from Patients p
where (upper(p.conditions) like 'DIAB1%' or 
       upper(p.conditions) like '% DIAB1%')
