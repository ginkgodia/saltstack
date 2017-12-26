selinux:
  cmd.run:
    - name: setenforce 0
    - unless: [ getenforce == Disabled ] 
  file.managed:
    - name: /etc/selinux/config
    - source: salt://init/files/config
