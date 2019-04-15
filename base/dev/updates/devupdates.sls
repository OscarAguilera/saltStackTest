security_updates:
  cmd.run:
    - name: yum update --security
    - name: yum upgrade --security