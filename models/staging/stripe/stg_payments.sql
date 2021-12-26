SELECT
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    STATUS,
    AMOUNT / 100 as amount,
    CREATED as payment_date
FROM `dbt-tutorial-334816.bdt_dataset.Stripe_payments`