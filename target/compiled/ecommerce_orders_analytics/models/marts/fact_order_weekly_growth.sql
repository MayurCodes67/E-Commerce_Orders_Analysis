

SELECT order_id,
       week_start,
	   weekly_revenue,
	   prev_week_revenue,
	   week_over_week_percentage_growth,
	   CASE
	       WHEN prev_week_revenue IS NULL THEN 'Insufficient Data'
           WHEN week_over_week_percentage_growth > 0 THEN 'Improving'
		   WHEN week_over_week_percentage_growth < 0 THEN 'Declining'
		   ELSE 'Stable'
	   END AS perc_growth_flag
FROM "ecommerce_orders_analytics"."analytics"."wow_order_revenue_percentage_growth"