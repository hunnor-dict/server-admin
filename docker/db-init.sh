#!/bin/bash

docker exec docker_mysql_1 sh -c 'mysql -v -v -v --local-infile hunnor < /sql/ordbank.import.sql'
