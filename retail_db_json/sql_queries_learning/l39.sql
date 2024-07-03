-- ORDERES WHOSE IS CLOSED OR COMPLETE
select *
from orders
where order_status in ('COMPLETE', 'CLOSED')
LIMIT 10;
