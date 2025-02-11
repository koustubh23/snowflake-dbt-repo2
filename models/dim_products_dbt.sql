

{{
    config(
        materialized='incremental'
    )
}}

with cte as (
SELECT * 
FROM {{ source("sales", "DIM_PRODUCTS") }} dp

union 

select '1' , current_timestamp() FROM {{ source("sales", "DIM_PRODUCTS") }} dp)


select * from cte 

{% if is_incremental() %}
    WHERE cte.LATEST_ORDER > (SELECT MAX(LATEST_ORDER) FROM {{ this }})
{% endif %}