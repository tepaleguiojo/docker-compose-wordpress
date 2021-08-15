#!/bin/bash

# create folders
mkdir $(pwd)/mysql
mkdir $(pwd)/src/wordpress

# setup web server
docker-compose up -d --build site

# download wordpress
docker-compose run --rm wp core download
