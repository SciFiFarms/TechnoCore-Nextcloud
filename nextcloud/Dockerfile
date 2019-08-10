FROM nextcloud:16

# I found most of this list at: https://www.reddit.com/r/NextCloud/comments/a1ftq1/nextcloud_docker_image_with_cronjob/
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    cron \
    libmagickwand-dev \
    libmagickcore-6.q16hdri-3-extra \
    ffmpeg && \
    pecl config-set php_ini /usr/local/etc/php && \
    docker-php-ext-enable imagick && \
    apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false && \
    rm -rf /var/lib/apt/lists/* && \
    apt-get clean

ENV NEXTCLOUD_UPDATE=1
RUN echo "*/15 * * * * su - www-data -s /bin/bash -c \"php -f /var/www/html/cron.php\""| crontab -

## Set up the CMD as well as the pre and post hooks.
COPY go-init /bin/go-init
COPY entrypoint.sh /usr/bin/entrypoint.sh
COPY exitpoint.sh /usr/bin/exitpoint.sh

RUN mkdir /nextcloud-data; \
    chown -R www-data:www-data /nextcloud-data*

VOLUME /nextcloud-data/

# The hope is that this will allow 
COPY config.php /etc/nextcloud/technocore.config.php
RUN ln -s  /etc/nextcloud/technocore.config.php /usr/src/nextcloud/config/technocore.config.php 

ENTRYPOINT ["go-init"]

CMD ["-main", "entrypoint.sh /entrypoint.sh apache2-foreground", "-post", "/usr/bin/exitpoint.sh"]
