{% from '../../web/bigip_login.sls' import login with context %}
verify pool members:
  bigip.manage_pool_members:
    {{ login(salt) }}
    - name: {{pillar['pool']['name']}}
    - members: {{data['data'].name}}