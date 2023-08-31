with

users as (
    select * from {{ ref('stg_greenery__users') }}
)

, user_count as (
    select
        -- count(distinct user_guid) as record_count
        {{ count_distinct('user_guid') }}
    from users
)

select * from user_count