# MNCIS automatic-import

This script downloads the latest files from the Minnesota Courts (MNCIS)
ftp server and then imports the data into the news-data database.

It's meant to be deployed to the AWS Elastic Container Service, where it
can be set up to run as a scheduled task. It's currently set to run weekly.

## Local setup

The heart of this application is a shell script that downloads the latest
data files from MNCIS and then runs a sql script to import that data
into the crime database on the AWS RDS cluster. 

It was built to run in a Docker container so that it can be deployed 
to ECS, and the Dockerfile handles all the dependencies. But it could
be run outside a container with the following dependencies:
- curl: used to download the data and post updates to Slack
- mysql-client: for executing the sql script (the crime database is a mysql db).
This needs to be Oracle's MySQL client (8.0+), not the MariaDB client: the
Aurora MySQL 8.4 server requires TLS and caching_sha2_password auth.
- jq: this is only used to escape the output of the mysql command for json
so it can be sent to Slack.

There are two credentials-related files that aren't checked into source
control but need to be in the root directory.
- .env file, with the following keys:
    - MNCIS_USER - username for MNCIS ftp server
    - MNCIS_PASS — password for MNCIS ftp server
    - SLACK_TOKEN — oauth token for bot user that posts Slack messages
    - SLACK_CHANNEL — channel ID where those messages should be posted
- my.cnf file — stores the username and pw for the mysql user for updating the 
database. This user needs write privileges for the crime database and the
newsroom database table. It looks like this:
```
[client]
user=<username>
password=<pw>
```
The script passes it to mysql with `--defaults-extra-file`, so it just needs
to sit next to the script.

The script also verifies the database's TLS certificate against
`rds-global-bundle.pem`, the public AWS RDS CA bundle, which is checked in. If
AWS rotates its CAs, refresh it from
https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem

## Deployment

This application is meant to be deployed on AWS Elastic Container Service.

First, build an image and post it to the Elastic Container Registry. It's
probably best to just follow the "push commands" instructions there, but
note that the ECS task runs on x86_64, so on an Apple Silicon Mac build with
`docker build --platform linux/amd64 ...`. The
current repo for this project is called "auto-mncis-repo".

Next, in ECS, create a new task definition using the code just posted
to ECR. It's important that the task has an IAM role that allows it to
access and modify AWS RDS, and that the cluster it's executed in is
in the same VPC as the RDS.

Lastly, create a scheduled task in a cluster in ECS that will run the 
task definition on a weekly schedule. 

