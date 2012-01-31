Steps for manual installation and configuration

    apt-get install nginx
    vim /etc/nginx/sites-available/vhost.conf
    ln -s /etc/nginx/sites-available/vhost.conf \
      /etc/nginx/sites-enabled/vhost.conf
    /etc/init.d/nginx restart
    mkdir /var/www
    vim /var/www/index.html
