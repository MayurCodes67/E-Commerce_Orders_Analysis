



select
    1
from "ecommerce_orders_analytics"."analytics"."fact_order_revenue_consistency"

where not(order_revenue_cv_four_weeks >= 0)

