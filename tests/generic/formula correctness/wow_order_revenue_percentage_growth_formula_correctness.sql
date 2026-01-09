{% test wow_order_revenue_percentage_growth_formula_correctness(model) %}

SELECT *
FROM {{ model }}
WHERE prev_week_revenue > 0
      AND week_over_week_percentage_growth IS DISTINCT
      FROM ((weekly_revenue - prev_week_revenue) / prev_week_revenue) * 100
      
{% endtest %}
