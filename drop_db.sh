#!/bin/bash
# Remove database

read -p "Enter the name of the database directory to remove: " database
if [ -d "$database" ]; then
    rm -rf "$database"
    echo "Database '$database' removed."
else
    echo "Database '$database' does not exist."
fi
