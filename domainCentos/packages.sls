{% if grains['os_family'] == 'RedHat' %}

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


{% endif %}

domain_ubuntu_packages:
  pkg.installed:
    - pkgs:
      - ntpdate
      - samba
      - krb5-config 
      - krb5-user
      - winbind
      - libpam-winbind
      - libnss-winbind