{% if grains['os_family'] == 'Debian' %}

security_updates_deb:
  cmd.run:
    - name: apt-get update
    - name: apt-get --upgradable
    - name: apt-get upgrade -y
{% endif %}

security_updates_rel:
  cmd.run:
    - name: yum updateinfo list
    - name: yum list-security --security
    - name: yum update-minimal --security -y
    - name: yum -y update --security
    - name: yum upgrade --security