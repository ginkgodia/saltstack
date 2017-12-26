php:
  pkg.installed:
    - names:
      - php
      - php-fpm
  service.running:
    - name: php-fpm
    - enable: True
