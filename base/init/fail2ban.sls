fail2ban:
  pkg:
    - installed
  
  file.directory:
    - name: /etc/fail2ban/jail.d/
    - source: salt://init/files/fail2ban/jail.d/
    - name: /etc/fail2ban/
    - sorce: salt://init/files/fail2ban/conf/
  service.running:
    - enable: True
    - require:
      - pkg: fail2ban
  watch:
      - file: /etc/fail2ban/jail.d/*
