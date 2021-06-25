select
    order_id,
    sum(amount) as total_payments
from {{ ref('stg_payments') }}
group by 1
having not(total_payments >= 0)