

SELECT order_id,
       customer_id,
	   DATE_TRUNC('week', order_date):: date AS week_start, -- starting from week_start (monday)
	   order_status,
	   COALESCE(order_amount, 0) AS cleaned_amount, -- replacing null values with 0 for better mathematical calculations
	   payment_method
FROM "ecommerce_orders_analytics"."analytics_raw"."orders"