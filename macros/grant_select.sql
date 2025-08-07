{% macro grant_select(user, role) %}

    {% set sql %}
        ...
    {% endset %}

    {{ log(..., info=True) }}
    {% do run_query(sql) %}
    {{ log(..., info=True) }}

{% endmacro %}