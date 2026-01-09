{{ config(materialized = 'table') }}

SELECT order_id,
       week_start,
	   SUM(cleaned_amount) AS weekly_revenue
FROM {{ ref('staging_orders') }}
GROUP BY order_id,
         week_start