WITH
    raw_hosts AS (
    SELECT
        *
    FROM
        -- AIRBNB.RAW.RAW_HOSTS
        {{ source('airbnb', 'hosts') }}
)

SELECT
    id AS host_id,
    is_superhost,
    name AS host_name,
    created_at,
    updated_at
FROM
    raw_hosts
