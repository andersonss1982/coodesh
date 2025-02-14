select p.*
from products p
where not exists (select * from order_items oi where oi.prodct_id=p.prodct_id)
