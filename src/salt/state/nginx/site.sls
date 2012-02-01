include:
  - nginx

{% for hostname in "salt.uggedal.com", %}
/etc/nginx/sites-available/{{ hostname }}.conf:
  file:
    - managed
    - source: salt://nginx/site.conf
    - template: jinja
    - context: {
      hostname: "{{ hostname }}",
      root: "/var/www" }
    - require:
      - pkg: nginx

/etc/nginx/sites-enabled/{{ hostname }}.conf:
  file:
    - symlink
    - target: /etc/nginx/sites-available/{{ hostname }}.conf
    - require:
      - file: /etc/nginx/sites-available/{{ hostname }}.conf

extend:
  nginx:
    service:
      - watch:
        - file: /etc/nginx/sites-enabled/{{ hostname }}.conf
{% endfor %}
