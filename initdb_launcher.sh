#!/bin/sh
docker-compose up -d
docker exec dockergisproject_pgdb_1 /bin/su - postgres -c "/home/initdb.sh"