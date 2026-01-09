



select
    1
from "ecommerce_orders_analytics"."analytics"."wow_order_revenue_cv_4w"

where not(stddev_four_weeks_prev IS NULL OR >= 0)

