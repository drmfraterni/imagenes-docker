FROM centos:7

LABEL version=1.0
LABEL description="Esto es una imagen de prueba"
LABEL vendor="David"

RUN yum install httpd -y

COPY prueba /var/www/html

RUN echo "$(whoami)" > /var/www/html/user1.html

RUN useradd galapruebas

USER galapruebas

RUN echo "$(whoami)" > /tmp/user2.html

USER root

RUN cp /tmp/user2.html  /var/www/html/user2.html

COPY run.sh /run.sh

CMD sh /run.sh


