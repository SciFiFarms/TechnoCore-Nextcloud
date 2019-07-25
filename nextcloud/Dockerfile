FROM nextcloud:16

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
