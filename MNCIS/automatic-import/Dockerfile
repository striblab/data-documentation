FROM alpine:3.9

# curl for downloading files and posting to slack
# mysql-client for running sql script to update database with new data
# jq to json escape message output by sql script for sending back to slack
RUN apk add --no-cache mysql-client curl jq

RUN mkdir scripts

# .env has slack token, desired slack channel id, 
# and sftp credentials for mncis server
COPY mncis-download-and-import.sh .env mncis_import_WEEKLY.sql scripts/

# mysql username and password stored in my.cnf
COPY my.cnf etc/mysql/

WORKDIR /scripts
CMD ["/bin/sh", "db-test.sh"]
# CMD ["/bin/sh", "mncis-download-and-import.sh"]