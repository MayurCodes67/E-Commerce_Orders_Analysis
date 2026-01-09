
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce_orders_analytics"."analytics"."wow_order_revenue_percentage_growth"

where not(week_over_week_percentage_growth >= 0)


  
  
      
    ) dbt_internal_test