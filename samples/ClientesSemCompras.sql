select c.*
from customers c
where not exists (select * from orders o where o.customer_id=c.customer)
