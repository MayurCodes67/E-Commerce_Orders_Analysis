



select
    1
from "ecommerce_orders_analytics"."analytics"."fact_order_weekly_growth"

where not(weekly_revenue >= 0)

