

SELECT *
FROM "ecommerce_orders_analytics"."analytics"."fact_order_revenue_consistency"
WHERE
(
 rolling_four_weeks_prev IS NULL
 AND consistency_score_flag <> 'Insufficient Data'
)
OR
(
 rolling_four_weeks_prev IS NOT NULL
 AND order_revenue_cv_four_weeks > 0.20
 AND consistency_score_flag <> 'Volatile'
)
OR
(
 rolling_four_weeks_prev IS NOT NULL
 AND order_revenue_cv_four_weeks < 0.20
 AND consistency_score_flag <> 'Consistent'
)
OR
(
 rolling_four_weeks_prev IS NOT NULL
 AND order_revenue_cv_four_weeks = 0.20
 AND consistency_score_flag <> 'Stable'
)

