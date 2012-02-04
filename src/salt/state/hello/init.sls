{% from "nginx/site.sls" import nginx_site  %}

include:
  - nginx

{{ nginx_site(grains["hostname"]["fqdn"], "/var/www") }}

/var/www:
  file:
    - directory

/var/www/index.html:
  file:
    - managed
    - source: salt://hello/index.html
    - template: jinja
    - context: { host: "{{ grains["hostname"]["host"] }}" }
    - require:
      - file: /var/www
