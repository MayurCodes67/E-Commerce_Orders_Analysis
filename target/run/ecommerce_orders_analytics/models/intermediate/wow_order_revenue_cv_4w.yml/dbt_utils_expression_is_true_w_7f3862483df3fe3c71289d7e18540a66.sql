
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  



select
    1
from "ecommerce_orders_analytics"."analytics"."wow_order_revenue_cv_4w"

where not(order_revenue_cv_four_weeks >= 0)


  
  
      
    ) dbt_internal_test