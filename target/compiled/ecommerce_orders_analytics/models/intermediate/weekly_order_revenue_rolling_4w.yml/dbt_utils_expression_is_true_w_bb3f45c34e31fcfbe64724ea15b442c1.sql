



select
    1
from "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_rolling_4w"

where not(rolling_four_weeks_prev >= 0)

