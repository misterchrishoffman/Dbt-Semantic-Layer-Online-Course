{% macro cents_to_dollars(column_name, decimals) -%} {# This acts like a function, accepting variables #}
    round({{ column_name }} / 100, {{decimals}})  {# column_name is the variable that the macro (i.e. function) is looking for #}
{%- endmacro %}