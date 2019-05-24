#!/bin/sh


if ! [ -d "./vendor" ]; then
    echo "Install depedencies with composer"
    composer install --ignore-platform-reqs --verbose
    echo "DB Migration"
    php artisan migrate
    echo "DB Seed"
    php artisan db:seed
fi


composer install --ignore-platform-reqs --verbose
exec "$@"
