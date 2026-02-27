{{ config(
    materialized='table'
) }}

SELECT
    ID,
    NAME,
    CITY,
    UPPER(CITY) AS CITY_UPPER
FROM {{ ref('customers_clean') }}
