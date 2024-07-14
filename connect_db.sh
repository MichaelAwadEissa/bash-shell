#!/bin/bash
# Connect to database

read -p "Enter the name of the database directory: " database
if [ -d "$database" ]; then
    cd "$database"
    echo "Connected to database directory '$database'."
    ../main
else
    echo "Database directory '$database' does not exist."
    exit 1
fi
