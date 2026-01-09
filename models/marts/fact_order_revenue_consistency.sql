{{ config(materialized = 'table') }}

SELECT order_id,
       week_start,
	   weekly_revenue,
	   rolling_four_weeks_prev,
	   stddev_four_weeks_prev,
	   order_revenue_cv_four_weeks,
	   CASE
	       WHEN rolling_four_weeks_prev IS NULL THEN 'Insufficient Data'
		   WHEN order_revenue_cv_four_weeks > 0.20 THEN 'Volatile'
		   WHEN order_revenue_cv_four_weeks < 0.20 THEN 'Consistent'
		   ELSE 'Stable'
	   END AS consistency_score_flag
FROM {{ ref('wow_order_revenue_cv_4w') }}		   