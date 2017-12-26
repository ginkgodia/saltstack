nginx:
  pkg.installed:
    - names:
      - pcre-devel
      - gcc 
      - openssl-devel 
      - gd-devel 
      - libxslt-devel 
      - libxml2-devel
  file.managed:
    - names: 
      - /opt/nginx-1.10.1.tar.gz
      - /opt/nginx-goodies-nginx-sticky-module-ng-08a395c66e42.tar.gz
      - /opt/nginx_upstream_check_module-0.3.0.tar.gz
    - sources: 
      - salt://lamp/nginx/packages/nginx-1.10.1.tar.gz 
      - salt://lamp/nginx/packages/nginx-goodies-nginx-sticky-module-ng-08a395c66e42.tar.gz
      - salt://lamp/nginx/packages/nginx_upstream_check_module-0.3.0.tar.gz
  cmd.run:
    - name: cd /opt/ &&  tar -xzf nginx-1.10.1.tar.gz && cd nginx-1.10.1 && ./configure  --prefix=/usr/local/nginx --user=nginx --group=nginx --with-pcre --with-http_ssl_module --with-http_stub_status_module --with-http_realip_module  && make && make install && ln -s /usr/local/nginx/sbin/nginx /sbin/nginx && nginx
    - require: 
      - pkg: openssl-devel
      - file: /opt/nginx-1.10.1.tar.gz 
    - unless:
      - test -d /usr/local/nginx
  service.running:
      - enable: True
  watch: 
      - directory: /usr/local/nginx/conf/
