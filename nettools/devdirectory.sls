new_directory:
  file.managed:
    - name: /home/cloud_user/Desktop/mytest/test
    - user: root
    - group: root
    - dir_mode: 777
    - makedirs: True