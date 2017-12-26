mysql-server:
  pkg:
    - installed
  service.running:
    - name: mysqld
    - enable: True
