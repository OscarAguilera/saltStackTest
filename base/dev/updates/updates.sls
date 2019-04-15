{% if grains['os_family'] == 'Debian' %}

security_updates_deb:
  cmd.run:
    - name: |
        apt-get update
        apt-get --upgradable
        apt-get upgrade -y
{% else %}

security_updates_rel:
  cmd.run:
    - name: |
        yum updateinfo list
        yum list-security --security
        yum update-minimal --security -y
        yum -y update --security
        yum upgrade --security
{% endif %}