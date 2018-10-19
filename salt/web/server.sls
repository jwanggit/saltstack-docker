{% if grains['os'] == 'RedHat' %}
httpd:
  pkg.installed: []
  service.running:
    - port: 443
    - require:
      - pkg: httpd
{% elif grains['os'] == 'Debian' %}
apache2:
  pkg.installed: []
  service.running:
    - port: 443
    - require:
      - pkg: apache2
{% elif grains['os'] == 'CentOS' %}
apache:
  pkg.installed: []
  service.running:
    - port: 443
    - require:
      - pkg: apache
{% elif grains['os'] == 'windows' %}
win_iis.deployed:
  - name: site0
  - port: 443
  - protocol: https
{% endif %}
