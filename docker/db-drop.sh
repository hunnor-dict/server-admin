#!/bin/bash

docker exec docker_mysql_1 sh -c 'mysql hunnor < /sql/ordbank.drop.sql'
