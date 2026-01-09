

SELECT *
FROM "ecommerce_orders_analytics"."analytics"."wow_order_revenue_percentage_growth"
WHERE prev_week_revenue = 0
      AND week_over_week_percentage_growth IS NOT NULL
      
