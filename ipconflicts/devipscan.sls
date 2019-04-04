arp-scan_pkg:
  pkg.installed:
    - name: arp-scan
  cmd.run:
    - name: arp-scan -I ens5 -l