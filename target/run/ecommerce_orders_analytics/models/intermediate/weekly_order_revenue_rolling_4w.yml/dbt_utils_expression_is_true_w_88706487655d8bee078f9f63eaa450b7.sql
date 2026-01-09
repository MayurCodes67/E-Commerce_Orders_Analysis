
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_rolling_4w"

where not(stddev_four_weeks_prev >= 0)


  
  
      
    ) dbt_internal_test