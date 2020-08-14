#!/usr/bin/env bash

call="cd /app && /usr/bin/php7.2 bin/magento"

eval "docker exec -it iqos_fpm bash -c \"$call $*\""
