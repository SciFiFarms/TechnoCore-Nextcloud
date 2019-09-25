#!/bin/env bash

# Have to wait for Nextcloud to install before configuring.
until su www-data -s /usr/local/bin/php occ status | grep "installed: true"; do
    echo "Waiting for Nextcloud to install. Sleeping 10s."
    sleep 10
done

occ_wrap app:enable encryption
occ_wrap encryption:enable
occ_wrap encryption:enable-master-key

# I had to use expect because there was a tty issue. When I used the -n (no interaction), it 
# failed telling me I needed -i and/or -t in my docker commands. They were already present. This works. 
# I used the gross su command because occ_wrap wasn't in scope.
expect - <<EOF
spawn su - www-data --shell /bin/bash --command "/usr/local/bin/php /var/www/html/occ encryption:encrypt-all" -- --
match_max 100000
expect -exact "Do you really want to continue? (y/n) "
send -- "y\r"
expect eof
EOF
