{% from "nginx/site.sls" import nginx_site  %}

include:
  -nginx

{{ nginx_site("salt.uggedal.com", "/var/www") }}

/var/www:
  file:
    - directory

/var/www/index.html:
  file:
    - managed
    - source: salt://hello/index.html
    - require:
      - file: /var/www
