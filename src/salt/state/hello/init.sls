include:
  - nginx

salt.uggedal.com:
  nginx_site:
    - present
    - root: /var/www

/var/www:
  file:
    - directory

/var/www/index.html:
  file:
    - managed
    - source: salt://hello/index.html
    - require:
      - file: /var/www
