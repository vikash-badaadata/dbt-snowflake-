{{ config(materialized='view') }}

with raw_orders as (
    select *
    from {{ source('raw', 'orders') }}
)

select
    order_id,
    customer_id,
    order_date,
    amount,
    status
from raw_orders
