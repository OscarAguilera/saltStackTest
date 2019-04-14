{% if grains['os_family'] == 'Debian' %}

security_updates_deb:
  cmd.run:
    - name: apt-get update
    - name: apt-get --upgradable
    - name: apt-get upgrade -y

{% endif %}
security_updates_rel:
  cmd.run:
    - name: yum update --security
    - name: yum upgrade --security