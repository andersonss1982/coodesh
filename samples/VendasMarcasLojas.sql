select b.brand_name as Marca, s.store_name as Loja, count(o.orders_id) as Qtd 
from stores s
inner join orders o on o.store_id=s.store_id
inner join order_items oi on oi.order_id=o.store_id
inner join products p on p.product_id=oi.product_id
inner join brands b on b.brand_id=p.brand_id
group by b.brand_name, s.store_name
