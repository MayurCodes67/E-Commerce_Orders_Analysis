
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

SELECT *
FROM "ecommerce_orders_analytics"."analytics"."wow_order_revenue_cv_4w"
WHERE rolling_four_weeks_prev > 0
      AND order_revenue_cv_four_weeks IS DISTINCT
      FROM (stddev_four_weeks_prev / rolling_four_weeks_prev)
      

  
  
      
    ) dbt_internal_test