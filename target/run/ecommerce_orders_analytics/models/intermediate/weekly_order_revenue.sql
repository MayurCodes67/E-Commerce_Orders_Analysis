
  
    

  create  table "ecommerce_orders_analytics"."analytics"."weekly_order_revenue__dbt_tmp"
  
  
    as
  
  (
    

SELECT order_id,
       week_start,
	   SUM(cleaned_amount) AS weekly_revenue
FROM "ecommerce_orders_analytics"."analytics"."staging_orders"
GROUP BY order_id,
         week_start
  );
  