FROM ubuntu:24.04

# curl for downloading files (over sftp) and posting to slack
# mysql-client (Oracle MySQL 8.0 client) for running sql script to update database
#   with new data; unlike the old alpine/mariadb client it supports TLS and
#   caching_sha2_password, which the MySQL 8.4 RDS server requires
# jq to json escape message output by sql script for sending back to slack
RUN apt-get update \
 && apt-get install -y --no-install-recommends mysql-client curl jq ca-certificates \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /scripts

# .env has slack token, desired slack channel id,
# and sftp credentials for mncis server
# my.cnf has mysql username and password
# rds-global-bundle.pem is the AWS RDS CA bundle, used to verify the db's TLS cert
COPY mncis-download-and-import.sh .env mncis_import_WEEKLY.sql my.cnf rds-global-bundle.pem ./

# script uses bash-only syntax (source, ${var:1:-1}), and ubuntu's sh is dash
CMD ["/bin/bash", "mncis-download-and-import.sh"]
