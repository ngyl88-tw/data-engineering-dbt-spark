{{ config(materialized='table', alias='product_view') }}

SELECT product_id, brand, price, count(product_id) AS view_counts
FROM rfn.ecommerce agg
WHERE event_type = 'view'
GROUP BY product_id, brand, price