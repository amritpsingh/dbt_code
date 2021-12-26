select
    id as order_id,
    user_id as customer_id,
    order_date,
    status

from `dbt-tutorial-334816.bdt_dataset.Jaffle_shop_orders`