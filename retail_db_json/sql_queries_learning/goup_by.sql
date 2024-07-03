select * from orders;

-- to count order status
select order_status, count(*) as order_count
from orders
group by 1 -- 1: first column insert
order by 2 desc; --2: use the second column declarete to order

-- to count just order status complete or closed
select order_status, count(*) as order_count
from orders
where order_Status in ('CLOSED', 'COMPLETE')
group by 1 
order by 2 desc; 


-- to count data of sales
select order_date, count(*) as order_count
from orders
group by 1
order by 2 desc; 
-- to count data of sales with month
select to_char(order_date, 'yyyy-MM') as order_month, count(*) as order_count
from orders
group by 1 
order by 1 desc; 

--calculate te revenue daily prudct consider complete/closed orders
select * from order_items

select order_item_order_id, 
	round(sum(order_item_subtotal):: numeric, 2 ) as order_revenue
from order_items
group by 1
order by 1




