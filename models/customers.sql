{{ config(
    materialized='table',

    pre_hook="
        INSERT INTO DBT_AUDIT_LOG (MODEL_NAME, RUN_TIME)
        VALUES ('customers_pre', CURRENT_TIMESTAMP)
    ",

    post_hook="
        INSERT INTO DBT_AUDIT_LOG (MODEL_NAME, RUN_TIME)
        VALUES ('customers_post', CURRENT_TIMESTAMP)
    "
) }}

SELECT *
FROM SAKSHEE_DB.PUBLIC.CUSTOMERS_RAW
