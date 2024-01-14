#!/bin/bash

# ENV Variables
: "${ADMIN_USERNAME:=default_username}"
: "${ADMIN_PASSWORD:=default_password}"
: "${FORUM_DB:=forum.db}"

# Initialize the database if it doesn't exist
if [ ! -f "$FORUM_DB" ]; then
    echo "Initializing database with name $FORUM_DB ..."
    ./init_docker_sqlite.sh "$FORUM_DB"
fi

if [ ! -f "$FORUM_DB" ]; then
    echo "Error: $FORUM_DB does not exist. Exiting..."
    exit 1
else
    ./run_sqlite.sh "$FORUM_DB" forum.pid
fi
