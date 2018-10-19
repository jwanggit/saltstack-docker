{% from '../../web/bigip_login.sls' import login with context %}
{{node_value.name}}:
  bigip.delete_pool_member:
    {{ login(salt) }}
    - name: {{pillar['pool']['name']}}
    - member: {{data['data'].name}}