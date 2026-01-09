
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  

SELECT *
FROM "ecommerce_orders_analytics"."analytics"."wow_order_revenue_percentage_growth"
WHERE prev_week_revenue > 0
      AND week_over_week_percentage_growth IS DISTINCT
      FROM ((weekly_revenue - prev_week_revenue) / prev_week_revenue) * 100
      

  
  
      
    ) dbt_internal_test