nginx:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: nginx
  file:
    - name: /etc/nginx/sites-enabled/default
    - absent
    - require:
      - pkg: nginx

