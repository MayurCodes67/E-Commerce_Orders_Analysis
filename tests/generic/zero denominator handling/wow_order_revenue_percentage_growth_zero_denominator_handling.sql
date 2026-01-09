{% test wow_order_revenue_percentage_growth_zero_denominator_handling(model) %}

SELECT *
FROM {{ model }}
WHERE prev_week_revenue = 0
      AND week_over_week_percentage_growth IS NOT NULL
      
{% endtest %}