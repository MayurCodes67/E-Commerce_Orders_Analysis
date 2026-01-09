

SELECT *
FROM "ecommerce_orders_analytics"."analytics"."fact_order_weekly_growth"
WHERE
(
 prev_week_revenue IS NULL
 AND perc_growth_flag <> 'Insufficient Data'
)
OR
(
 prev_week_revenue IS NOT NULL
 AND week_over_week_percentage_growth > 0
 AND perc_growth_flag <> 'Improving'
)
OR
(
 prev_week_revenue IS NOT NULL
 AND week_over_week_percentage_growth < 0
 AND perc_growth_flag <> 'Declining'
)
OR
(
 prev_week_revenue IS NOT NULL
 AND week_over_week_percentage_growth = 0
 AND perc_growth_flag <> 'Stable'
)

