Install and configure the dictionary's applications.

# Overview

![System Overview](docs/system-overview.png)

# Docker

The `docker` directory contains a `docker-compose.yml` file that can be used to create local instances of the MySQL database and Solr.

1. Use `docker-compose up` to start the services. This command will
   - Start Solr, the admin interface address is `localhost:8983`.
   - Start MySQL server, reachable directly at `localhost:3306`, login details are in `docker/mysql/mysql.env`.
   - Start Adminer, a database manager web app, log in at `localhost:8081` with the same database details as above.
   - Downloads and patches Norsk ordbank with Ant. This container will place files in the `workspace` directory and exit.

1. When the `downloader` container exits and the text files form Norsk ordbank are available in the `workspace` directory, run `db-init.sh` to load these into the database.

1. The MySQL database for HunNor can be downloaded from https://dict.hunnor.net/about and loaded into the database e.g. with the Import function in Adminer.

1. XML exports of the dictionary can be downloaded from the same address. Place the extracted XML files into the `workspace` directory and use the data import tool in the Solr cores to index them.
