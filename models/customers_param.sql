SELECT *
FROM {{ ref('customers_clean') }}
WHERE CITY = '{{ var("city_name", "Pune") }}'
