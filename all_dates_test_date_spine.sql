
with all_dates as (

{{ dbt_utils.date_spine(
    datepart="day",
    start_date="date('2020-01-01')",
    end_date="date('2021-01-01')"
) }}

)

select * from all_dates