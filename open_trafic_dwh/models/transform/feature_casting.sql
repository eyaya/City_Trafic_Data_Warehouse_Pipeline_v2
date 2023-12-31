with source_data_cast as (
    select *
    from {{ source('open_trafic', 'trafic_data') }}
),
final as (
    select id,
        track_id,
        vehicle_type,
        traveled_d,
        avg_speed,
        lat,
        lon,
        speed,
        lon_acc,
        lat_acc,
        time
    from source_data_cast
)
SELECT *
FROM final