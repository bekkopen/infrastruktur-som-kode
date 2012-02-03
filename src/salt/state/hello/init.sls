include:
  - nginx
  - nginx.site

/var/www:
  file:
    - directory

/var/www/index.html:
  file:
    - managed
    - source: salt://hello/index.html
    - require:
      - file: /var/www
