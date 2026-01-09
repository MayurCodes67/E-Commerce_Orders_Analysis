
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce_orders_analytics"."analytics"."fact_order_weekly_growth"

where not(weekly_revenue >= 0)


  
  
      
    ) dbt_internal_test