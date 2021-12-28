SELECT
    ID as payment_id,
    ORDERID as order_id,
    PAYMENTMETHOD as payment_method,
    STATUS,
    {{ cents_to_dollars('amount') }} as amount,
    CREATED as created_at
FROM {{ source('stripe', 'Stripe_payments') }}