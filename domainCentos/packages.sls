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