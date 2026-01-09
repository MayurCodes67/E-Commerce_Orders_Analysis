
  
    

  create  table "ecommerce_orders_analytics"."analytics"."wow_order_revenue_percentage_growth__dbt_tmp"
  
  
    as
  
  (
    

SELECT order_id,
       week_start,
	   weekly_revenue,
	   prev_week_revenue,
	   ((weekly_revenue - prev_week_revenue) / NULLIF(prev_week_revenue, 0)) * 100 AS week_over_week_percentage_growth
FROM "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_lag_1w"
  );
  