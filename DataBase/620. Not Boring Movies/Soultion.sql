select c.*
from Cinema c
where mod(id, 2) = 1
and c.description <> 'boring'
order by c.rating desc
