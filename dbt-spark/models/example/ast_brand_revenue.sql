{{ config(materialized='table', alias='brand_revenue') }}

SELECT brand, SUM(price) AS revenue
FROM {{ source('rfn', 'ecommerce') }}
GROUP BY brand