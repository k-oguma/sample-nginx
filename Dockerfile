FROM nginx

COPY ./3000.conf /etc/nginx/conf.d/3000.conf
COPY ./default.conf /etc/nginx/conf.d/default.conf
COPY hoge/index.html /usr/share/nginx/html/hoge/index.html

EXPOSE 80 3000
