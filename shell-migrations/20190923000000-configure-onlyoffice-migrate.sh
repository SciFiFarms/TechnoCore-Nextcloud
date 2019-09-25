#!/bin/sh

# Then start running occ commands
#echo "$SHELL_OPTS"
occ_wrap --no-warnings app:enable onlyoffice
# TODO: This should support a vpath. 
occ_wrap config:app:set onlyoffice DocumentServerUrl --value="https://$(echo $NEXTCLOUD_TRUSTED_DOMAINS | cut -f1 -d " " | sed "s/cloud/nextcloud-onlyoffice/")/"
occ_wrap config:app:set onlyoffice DocumentServerInternalUrl --value="http://nextcloud_onlyoffice/"
occ_wrap config:app:set onlyoffice StorageUrl --value="http://nextcloud/"
occ_wrap config:app:set onlyoffice jwt_secret --value=\"${NEXTCLOUD_ONLYOFFICE_PASSWORD}\"
