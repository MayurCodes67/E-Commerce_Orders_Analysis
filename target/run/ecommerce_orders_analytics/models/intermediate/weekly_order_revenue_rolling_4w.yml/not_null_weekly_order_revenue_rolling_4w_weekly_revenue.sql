
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select weekly_revenue
from "ecommerce_orders_analytics"."analytics"."weekly_order_revenue_rolling_4w"
where weekly_revenue is null



  
  
      
    ) dbt_internal_test