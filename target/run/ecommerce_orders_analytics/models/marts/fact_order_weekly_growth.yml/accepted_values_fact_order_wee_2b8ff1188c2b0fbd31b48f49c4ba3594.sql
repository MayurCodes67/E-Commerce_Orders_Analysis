
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    

with all_values as (

    select
        perc_growth_flag as value_field,
        count(*) as n_records

    from "ecommerce_orders_analytics"."analytics"."fact_order_weekly_growth"
    group by perc_growth_flag

)

select *
from all_values
where value_field not in (
    'Insufficient Data','Improving','Declining','Stable'
)



  
  
      
    ) dbt_internal_test