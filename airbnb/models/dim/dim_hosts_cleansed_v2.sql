{{
  config(
    materialized = 'table'
    )
}}

WITH
    src_hosts AS (
    SELECT
        *
    FROM
        {{ ref('src_hosts') }}
)

SELECT
    host_id,
    is_superhost,
    NVL(host_name, 'N/A') AS host_name,
    created_at,
    updated_at
FROM
    src_hosts
