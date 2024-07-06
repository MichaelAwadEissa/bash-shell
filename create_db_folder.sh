#!/bin/bash

# Function to create Data_Base folder if it doesn't exist
create_database_folder() {
    folder_name="Data_Base"
    
    if [ ! -d "$folder_name" ]; then
        mkdir "$folder_name"
        echo "Folder '$folder_name' created."
    else
        echo "Folder '$folder_name' already exists."
    fi
}

# Call the function
create_database_folder

# Change directory to Data_Base
cd "./Data_Base" || { echo "Failed to change directory to Data_Base"; exit 1; }

# Confirmation message
echo "Changed directory to $(pwd)"
# run this file using source ./create_db_folder.sh
