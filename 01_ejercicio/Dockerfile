FROM centos:7


RUN                                                                          \
  yum -y install httpd                                                       \
    php71u-fpm                                                               \
    php71u-cli                                                               \
    php71u-mysqlnd                                                           \
    php71u-soap                                                              \
    php71u-xml                                                               \
    php71u-zip                                                               \
    php71u-json                                                              \
    php71u-mcrypt                                                            \
    php71u-mbstring                                                          \
    php71u-zip                                                               \
    php71u-gd 

EXPOSE 80 443

RUN echo "<?php phpinfo(); ?>" > /var/www/html/index.php

CMD apachectl -DFOREGROUND

