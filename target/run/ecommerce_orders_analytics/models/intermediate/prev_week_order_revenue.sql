
  
    

  create  table "ecommerce_orders_analytics"."analytics"."prev_week_order_revenue__dbt_tmp"
  
  
    as
  
  (
    

SELECT order_id,
       week_start,
	   weekly_revenue,
	   LAG(weekly_revenue) OVER(PARTITION BY order_id ORDER BY week_start) AS prev_week_revenue
FROM "ecommerce_orders_analytics"."analytics"."weekly_order_revenue"
  );
  