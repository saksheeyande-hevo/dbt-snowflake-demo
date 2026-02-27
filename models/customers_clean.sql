{{ config(
    materialized='view'
) }}

SELECT
    ID,
    NAME,
    EMAIL,
    CITY
FROM {{ ref('customers') }}
WHERE NAME IS NOT NULL
