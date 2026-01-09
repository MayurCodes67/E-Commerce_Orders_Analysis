

SELECT *
FROM "ecommerce_orders_analytics"."analytics"."wow_order_revenue_cv_4w"
WHERE rolling_four_weeks_prev > 0
      AND order_revenue_cv_four_weeks IS DISTINCT
      FROM (stddev_four_weeks_prev / rolling_four_weeks_prev)
      
