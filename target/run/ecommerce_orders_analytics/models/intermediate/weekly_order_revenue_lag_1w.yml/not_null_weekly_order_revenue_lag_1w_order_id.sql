
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select order_id
from "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_lag_1w"
where order_id is null



  
  
      
    ) dbt_internal_test