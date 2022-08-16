{% macro oracle__cast_string_to_date(field, format) %}
  {%- if format -%}
    to_date({{field}}, '{{format}}')
  {%- else -%}
    to_date({{field}}, 'YYYY-MM-DD')
  {%- endif -%}
{% endmacro %}
