<?php
$CONFIG = array (
  # This is needed to allow Nextcloud to receive visitors actual IP address rather than the ingress' IP.
  'trusted_proxies'   => [ '10.42.0.0/24' ],
  
  "log_type" => "file",
  "logfile" => "/dev/stdout",
  "loglevel" => "1",

  'htaccess.RewriteBase' => '/',
  #'overwritecondaddr' => '^10\.42\.0\..+$',
  'overwriteprotocol' => 'https',
  'overwritewebroot'  => strlen(getenv('PATH_PREFIX')) > 1 ? mb_substr(getenv('PATH_PREFIX'), 0, -1) : getenv('PATH_PREFIX'),
);
