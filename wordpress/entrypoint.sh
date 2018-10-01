#!/bin/bash

cp -pr /var/www/html/wp-config-sample.php /var/www/html/wp-config.php
sed -i -e "s/database_name_here/${DB_NAME}/" /var/www/html/wp-config.php
sed -i -e "s/username_here/${DB_USER}/" /var/www/html/wp-config.php
sed -i -e "s/password_here/${DB_PASSWORD}/" /var/www/html/wp-config.php
sed -i -e "s/localhost/${DB_HOST}/" /var/www/html/wp-config.php

exec "$@"

