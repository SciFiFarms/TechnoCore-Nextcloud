#!/bin/env bash

function occ_wrap() {
    echo "$*"
    # More information on passing arguments through su and bash. 
    # https://unix.stackexchange.com/questions/123317/passing-arguments-to-su-provided-shell
    # TODO: Try another set of --'s and then use "$@"
    su - www-data --shell /bin/bash --command "/usr/local/bin/php /var/www/html/occ $*" -- --
}
