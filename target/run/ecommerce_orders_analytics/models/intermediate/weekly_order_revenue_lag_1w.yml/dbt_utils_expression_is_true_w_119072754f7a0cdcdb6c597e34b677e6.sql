
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_lag_1w"

where not(prev_week_revenue >= 0)


  
  
      
    ) dbt_internal_test