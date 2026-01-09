{{ config(materialized = 'table') }}

SELECT order_id,
       week_start,
	   weekly_revenue,
	   LAG(weekly_revenue) OVER(PARTITION BY order_id ORDER BY week_start) AS prev_week_revenue
FROM {{ ref('weekly_order_revenue') }}

	   