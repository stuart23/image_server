FROM nginx:latest

COPY nginx.conf /etc/nginx/nginx.conf
COPY gal.xslt /etc/nginx/gal.xslt

VOLUME /var/www
CMD nginx
