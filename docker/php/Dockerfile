FROM amazonlinux:2.0.20220719.0

RUN yum update -y && \
    yum install -y yum-utils

RUN amazon-linux-extras install -y epel && \
    yum-config-manager --enable epel && \
    yum install -y https://rpms.remirepo.net/enterprise/remi-release-7.rpm && \
    yum-config-manager --enable remi-php81

RUN yum update -y && \
    yum install -y \
      php81 \
      php81-php-xml \
      php81-php-mbstring \
      php81-php-process \
      php81-php-intl \
      php81-php-pdo \
      php81-php-opcache \
      which \
      less \
      make \
      git

RUN alternatives --install /usr/bin/php php /usr/bin/php81 1

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    php -r "if (hash_file('sha384', 'composer-setup.php') === '55ce33d7678c5a611085589f1f3ddf8b3c52d662cd01d4ba75c0ee0459970c2200a51f492d557530c71c15d8dba01eae') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    php composer-setup.php --install-dir=/usr/bin --filename=composer && \
    php -r "unlink('composer-setup.php');"

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.rpm.sh' | bash && \
    yum install -y symfony-cli
