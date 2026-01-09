 
SELECT order_id, 
       week_start, 
	   weekly_revenue, 
	   AVG(weekly_revenue) OVER(PARTITION BY order_id ORDER BY week_start ROWS BETWEEN 4 PRECEDING AND 1 PRECEDING) AS rolling_four_weeks_prev, 
	   STDDEV_POP(weekly_revenue) OVER(PARTITION BY order_id ORDER BY week_start ROWS BETWEEN 4 PRECEDING AND 1 PRECEDING) AS stddev_four_weeks_prev
FROM "ecommerce_orders_analytics"."analytics"."weekly_order_revenue"