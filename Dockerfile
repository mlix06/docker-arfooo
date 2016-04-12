FROM ubuntu:trusty
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -yq install \
        curl \
		zip \
  vim && \
    rm -rf /var/lib/apt/lists/*
USER www-data
WORKDIR /var/www/html

RUN curl -L  http://www.e-dir.fr/arfooo_ultimate/arfooo_ultimate.zip > /var/www/html/arfooo_ultimate.zip
RUN unzip /var/www/html/arfooo_ultimate.zip -d /var/www/html/
RUN mv /var/www/html/arfooo\ ultimate/* /var/www/html/
RUN rm /var/www/html/arfooo_ultimate.zip
RUN rm -rf  /var/www/html/arfooo\ ultimate/*
RUN rm -rf  /var/www/html/arfooo\ ultimate/
