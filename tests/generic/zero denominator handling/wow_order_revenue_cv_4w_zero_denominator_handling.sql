{% test wow_order_revenue_cv_4w_zero_denominator_handling(model) %}

SELECT *
FROM {{ model }}
WHERE rolling_four_weeks_prev = 0
      AND order_revenue_cv_four_weeks IS NOT NULL
      
{% endtest %}