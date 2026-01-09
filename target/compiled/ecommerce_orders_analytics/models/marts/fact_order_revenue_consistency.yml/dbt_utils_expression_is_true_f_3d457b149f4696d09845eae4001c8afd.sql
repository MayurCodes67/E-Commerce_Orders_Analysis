



select
    1
from "ecommerce_orders_analytics"."analytics"."fact_order_revenue_consistency"

where not(rolling_four_weeks_prev >= 0)

