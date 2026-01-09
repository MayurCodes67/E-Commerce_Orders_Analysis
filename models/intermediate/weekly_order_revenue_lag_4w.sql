{{ config(materialized = 'table') }}

SELECT order_id,
       week_start,
	   weekly_revenue,
	   LAG(weekly_revenue, 4) OVER(PARTITION BY order_id ORDER BY week_start) AS prev_week4_order_revenue
FROM {{ ref('weekly_order_revenue') }}