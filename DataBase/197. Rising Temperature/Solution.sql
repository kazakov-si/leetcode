/* Write your PL/SQL query statement below */
select w2.id 
from weather w1 join weather w2
on w2.recordDate - w1.recordDate = 1
and w2.temperature > w1.temperature
