{% macro login(salt) %}
{% set pillar_bigip = salt['pillar.get']('bigip') %}
    - hostname: {{ pillar_bigip.host }}
    - username: {{ pillar_bigip.username }}
    - password: {{ pillar_bigip.password }}
{% endmacro %}