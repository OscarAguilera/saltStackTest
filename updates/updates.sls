{% if grains['os_family'] == 'Debian' %}

security_updates_deb:
  cmd.run:
    - name: apt-get update --security
    - name: apt-get upgrade --security

{% endif %}
security_updates_rel:
  cmd.run:
    - name: yum update --security
    - name: yum upgrade --security