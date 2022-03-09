#!/bin/bash

# Start the postgres containers from docker-compose-postgres.yml
echo "Starting the PostgreSQL and PGAdmin Containers"
docker-compose -f ./docker-compose-postgres.yml -p local-postgres-containers up -d

DBHOST=$(docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' local-postgres)

echo "Postgres Container IP: $DBHOST | PORT: 5432"
echo "Postgres Master User: 'admin' | Pass: 'admin'"
echo "Postgres Application User: 'localdev' | Pass: 'localdev-secret' | Database: 'replaceme'"

echo "PGAdmin IP: localhost | PORT: 8080"
echo "PGAdmin Login - Email: admin@example.com | Pass: admin".com | Pass: admin"