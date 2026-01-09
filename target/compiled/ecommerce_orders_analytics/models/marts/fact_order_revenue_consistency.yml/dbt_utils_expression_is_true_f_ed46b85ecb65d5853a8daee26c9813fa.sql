



select
    1
from "ecommerce_orders_analytics"."analytics"."fact_order_revenue_consistency"

where not(weekly_revenue >= 0)

