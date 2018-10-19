{% from 'bigip_login.sls' import login with context %}
{% for node_name, node_value in pillar.get('node', {}).items() %}
{{node_value.name}}:
  bigip.manage_node:
    {{ login(salt) }}
    - name: {{node_value.name}}
    - address: {{node_value.address}}
{% endfor %}
verify pool:
  bigip.manage_pool:
    {{ login(salt) }}
    - name: {{pillar['pool']['name']}}
verify pool members:
  bigip.manage_pool_members:
    {{ login(salt) }}
    - name: {{pillar['pool']['name']}}
    - members: {{pillar['node'].values() | map(attribute='name') | list}}
verify virtual:
  bigip.manage_virtual:
    {{ login(salt) }}
    - name: {{pillar['virtual']['name']}}
    - pool: {{pillar['pool']['name']}}
    - destination: {{pillar['virtual']['destination']}}