#!/bin/bash

# Starts ssh

/usr/sbin/sshd

# Starts php process in background

php-fpm -y /etc/php-fpm.conf -R &

# Starts nginx daemon

nginx -g 'daemon off;'