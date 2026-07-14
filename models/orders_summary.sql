{{ config(materialized='view') }}

select
    customer_id,
    sum(order_id) as order_count,
    sum(amount) as total_amount
from {{ ref('stg_orders') }}
group by customer_id
order by total_amount desc
