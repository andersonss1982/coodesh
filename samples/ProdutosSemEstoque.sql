select p.*
from products p
where not exists (select * from stocks s where s.product_id=p.product_id)
