FROM centos:7


RUN                                                                          \
  yum -y install httpd php php-dg php-xml php-mbstring php-mcrypt php-xmlrpc php-cli               

EXPOSE 80 443

RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php

CMD apachectl -DFOREGROUND

