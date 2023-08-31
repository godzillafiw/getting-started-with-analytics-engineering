{% macro count_distinct(column) %}
    count(distinct {{ column }} ) as record_count
{% endmacro %}