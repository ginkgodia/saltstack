ntp:
  pkg.installed
/etc/ntp.conf:
  file.managed:
    - source: salt://init/files/ntp.conf
    - require:
      - pkg: ntp
    - user: root
    - mode: 755
    - group: root
  service.running:
    - name: ntpd
    - enable: True
    - watch:
      - file: /etc/ntp.conf
