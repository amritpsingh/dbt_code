with customers as (
    
    select
        id as customer_id,
        first_name,
        last_name
    from `dbt-tutorial-334816.bdt_dataset.Jaffle_shop_customers`

)

select * from customers