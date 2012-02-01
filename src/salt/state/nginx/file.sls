/var/www:
  file:
    - directory
    - source: salt://nginx/index.html

/var/www/index.html:
  file:
    - managed
    - source: salt://nginx/index.html
    - require:
      - file: /var/www
