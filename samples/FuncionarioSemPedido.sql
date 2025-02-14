select f.*
from staffs f
where not exists (select * from orders o where o.costumer_id=f.staff_id)
