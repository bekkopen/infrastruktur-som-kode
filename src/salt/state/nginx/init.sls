nginx:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: nginx
  file:
    - name /etc/nginx/sites-available/default
    - absent
    - require:
      - pkg: nginx

