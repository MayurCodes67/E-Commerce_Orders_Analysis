

SELECT order_id,
       week_start,
	   weekly_revenue,
	   rolling_four_weeks_prev,
	   stddev_four_weeks_prev,
	   stddev_four_weeks_prev / NULLIF(rolling_four_weeks_prev, 0) AS order_revenue_cv_four_weeks
FROM "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_rolling_4w"