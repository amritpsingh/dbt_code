with payments as (

    select
        order_id,
        sum( case when status = 'success' then amount end) as amount
    from {{ ref('stg_payments') }}
    group by order_id

),

orders as (

    select
        order_id,
        customer_id,
        order_date,
        status
    from {{ ref('stg_orders') }}

)

select
    orders.order_id,
    orders.customer_id,
    orders.order_date,
    coalesce(payments.amount, 0) as amount
from orders
left join payments on orders.order_id = payments.order_id