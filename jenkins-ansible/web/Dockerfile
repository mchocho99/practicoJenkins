FROM remote-host

COPY ./conf/nginx.repo /etc/yum.repos.d/nginx.repo

RUN  yum -y install https://repo.ius.io/ius-release-el7.rpm && \
     yum -y install nginx-1.12.2 openssl --enablerepo=nginx

RUN yum -y install \
     php74-fpm \
     php74-cli \
     php74-mysqlnd \
     php74-soap \
     php74-xml \
     php74-json \
     php74-mbstring \
     php74-gd \
       --enablerepo=ius && yum clean all

EXPOSE 80 443

VOLUME /var/www/html /var/log/nginx /var/log/php-fpm /var/lib/php-fpm

RUN setfacl -Rm u:remote_user:rwx /var/www/html

COPY ./conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY ./bin/start.sh /start.sh

RUN chmod +x /start.sh

RUN mkdir -p /var/run/php-fpm

CMD /start.sh