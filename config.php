<?php
$CONFIG = array (
    'htaccess.RewriteBase' => '/',
  #'trusted_proxies'   => [ '10.42.0.0/24' ],
  #'overwritecondaddr' => '^10\.42\.0\..+$',
  'overwriteprotocol' => 'https',
  'overwritewebroot'  => strlen(getenv('PATH_PREFIX')) > 1 ? mb_substr(getenv('PATH_PREFIX'), 0, -1) : getenv('PATH_PREFIX'),
);
