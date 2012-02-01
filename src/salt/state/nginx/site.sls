{% for hostname in "salt.uggedal.com" %}
/etc/nginx/sites-available/{{ hostname }}:
  file:
    - managed
    - source: salt://nginx/site.conf
    - template: jinja
    - context: {
      hostname: "{{ hostname }}",
      root: "/var/www" }
    - require:
      - pkg: nginx
/etc/nginx/sites-enabled/{{ hostname }}:
  file:
    - symlink
    - target: /etc/nginx/sites-available/{{ hostname }}
    - require:
      - file: /etc/nginx/sites-available/{{ hostname }}
{% endfor %}
