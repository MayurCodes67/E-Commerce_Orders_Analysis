



select
    1
from "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_lag_4w"

where not(weekly_revenue >= 0)

