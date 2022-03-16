
-- Use the `ref` function to select from other models

{{ config(materialized='table') }}
with stg_order_mod_tbl as (
    select * from {{source('rawecom','orders')}}
)
select * from stg_order_mod_tbl