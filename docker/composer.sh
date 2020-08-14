#!/usr/bin/env bash

call="cd /app && /usr/bin/php7.2 /usr/bin/composer"

eval "docker exec -it iqos_fpm bash -c \"$call $*\""
eval "docker exec -it iqos_fpm bash -c \"chmod -R a+w /app/vendor/\""
