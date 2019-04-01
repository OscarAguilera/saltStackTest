arp-scan_pkg:
  pkg.installed:
    - name: arp-scan
  cmd.run:
    - name: arp-scan -I eth0 -l