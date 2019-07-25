#!/bin/env bash

set_service_flag nextcloud 

# TODO: When I create a nextcloud instance with a prefix, it just doesn't seem 
#       to work quite right. For one, it looks for static things on the prefix: example.com/prefix/
#       but they don't actually exist. I think this is likely because the nginx server doesn't know
#       it needs to serve those on a different path. Would need to figure out how to pass the prefix 
#       to nginx. 
#path_prefix NEXTCLOUD cloud
