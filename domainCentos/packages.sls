{% if grains['os_family'] == 'Debian' %}

domain_ubuntu_packages:
  pkg.installed:
    - pkgs:
      - samba
      - krb5-config
      - krb5-user
      - libnsswinbind
      - libpam-winbind
{% endif %}

domain_centos_packages:
  pkg.installed:
    - pkgs:
      - sssd 
      - realmd 
      - oddjob 
      - oddjob-mkhomedir 
      - adcli 
      - samba-common 
      - samba-common-tools 
      - krb5-workstation 
      - openldap-clients 
      - policycoreutils-python