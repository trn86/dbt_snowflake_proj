
-- Use the `ref` function to select from other models

{{ config(
materialized='view'
) }}
with order_analytics_view as (
    select * from {{ ref('stg_order_mod_tbl') }} where category = 'Fridge'
)
select * from order_analytics_view