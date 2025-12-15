select
    sum(payment_id) as succesful_payment_amount
from {{ ref('stg_stripe__payments') }}
where status = 'success'
