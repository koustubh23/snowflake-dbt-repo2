
{% snapshot scd_pan %}

    {{
        config(
            target_schema="snapshots",
            unique_key="ID",
            strategy="check",
            check_cols=["PAN"],
        )
    }}

SELECT * FROM  {{source("sales","PAN_INFO")}}

{% endsnapshot %}

