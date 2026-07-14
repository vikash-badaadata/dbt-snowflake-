{{ config(materialized='view') }}

with raw_customers as (
    select *
    from {{ source('raw', 'customers') }}
)

select
    customer_id,
    customer_name,
    email,
    created_at
from raw_customers
