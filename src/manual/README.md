Steps for manual installation and configuration

    apt-get install nginx
    rm /etc/nginx/sites-enabled/default
    vim /etc/nginx/sites-available/vhost.conf
    ln -s /etc/nginx/sites-{available,enabled}/manual.uggedal.com.conf
    /etc/init.d/nginx restart
    mkdir /var/www
    vim /var/www/index.html
