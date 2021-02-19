FROM nginx

RUN useradd galaprueba

COPY bootstrapPage /usr/share/nginx/html

ENV archivo docker

WORKDIR /usr/share/nginx/html

EXPOSE 90

LABEL version=1

USER galaprueba

RUN echo "yo soy $(whoami)" > /tmp/yo.html

USER root

RUN cp /tmp/yo.html /usr/share/nginx/html/docker.html

VOLUME /var/log/nginx

CMD nginx -g 'daemon off;'
