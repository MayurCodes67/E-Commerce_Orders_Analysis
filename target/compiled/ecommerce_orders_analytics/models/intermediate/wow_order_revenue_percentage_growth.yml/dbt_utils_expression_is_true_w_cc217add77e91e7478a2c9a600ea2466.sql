



select
    1
from "ecommerce_orders_analytics"."analytics"."wow_order_revenue_percentage_growth"

where not(weekly_revenue >= 0)

