
  
    

  create  table "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_lag_4w__dbt_tmp"
  
  
    as
  
  (
    

SELECT order_id,
       week_start,
	   weekly_revenue,
	   LAG(weekly_revenue, 4) OVER(PARTITION BY order_id ORDER BY week_start) AS prev_week4_order_revenue
FROM "ecommerce_orders_analytics"."analytics"."weekly_order_revenue"
  );
  