with order_tbl as (
    select * from {{ ref('stg_order_mod_tbl') }} where quantity > 90
)
select quantity from order_tbl