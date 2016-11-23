FROM daocloud.io/library/php:7.0.11-fpm-alpine
#COPY libaio1_0.3.110-3_amd64.deb /root/libaio1_0.3.110-3_amd64.deb
#COPY instantclient_11_2  /root/instantclient_11_2
RUN   cd /root;\
 #     dpkg -i libaio1_0.3.110-3_amd64.deb;\
    #echo deb http://ftp.de.debian.org/debian sid main >>  /etc/apt/sources.list; \
 #   cd /root/instantclient_11_2;\
 #    export LD_LIBRARY_PATH=/root/instantclient_11_2;\
 #    export ORACLE_HOME=/root/instantclient_11_2 ;\
 #    export NLS_LANG="AMERICAN_AMERICA.AL32UTF8";\

     docker-php-ext-configure pdo_mysql \
     && docker-php-ext-install pdo_mysql; \
   
 #  docker-php-ext-configure pdo_oci --with-pdo_oci=instantclient,/root/instantclient_11_2,11.2.0.4 \
 #    && docker-php-ext-install pdo_oci; \

  # docker-php-ext-configure oci8 --with-oci8=instantclient,/root/instantclient_11_2  \
  #   && docker-php-ext-install oci8; \
