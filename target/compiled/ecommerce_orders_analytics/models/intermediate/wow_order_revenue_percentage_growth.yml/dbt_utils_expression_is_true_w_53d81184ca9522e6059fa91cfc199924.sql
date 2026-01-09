



select
    1
from "ecommerce_orders_analytics"."analytics"."wow_order_revenue_percentage_growth"

where not(week_over_week_percentage_growth >= 0)

