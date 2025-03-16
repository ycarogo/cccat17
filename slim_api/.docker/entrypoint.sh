#!/bin/bash

chown -R www-data:www-data .
composer install

php-fpm
