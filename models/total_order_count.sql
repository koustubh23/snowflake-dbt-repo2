select order_id, count(1) as total_orders from {{ ref("VW_ORDERS") }} group by order_id
