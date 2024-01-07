#origin image
FROM ubuntu:16.04
#update
RUN apt update
#setup server environment
RUN apt install -y \
apache2 \
php \
libapache2-mod-php
COPY index.php /var/www/html/
COPY google.jpg /var/www/html/
COPY google.css /var/www/html/
COPY font.css.js /var/www/html/
COPY lente.png /var/www/html/
RUN rm /var/www/html/index.html
#entry point
#entrypoint service apache2 start && /bin/bash
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]
