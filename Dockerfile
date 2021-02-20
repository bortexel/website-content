FROM nginx:latest
COPY server/nginx.conf /etc/nginx/nginx.conf
WORKDIR /var/www
ADD . .
EXPOSE 7272
HEALTHCHECK --interval=1m --timeout=3s \
  CMD curl -f http://localhost:7272/pages/example.json || exit 1