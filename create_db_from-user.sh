#!/bin/bash

# Function to validate directory name
validate_directory_name() {
    dir_name="$1"
    
    # Check for special characters or spaces
    if [[ "$dir_name" =~ [^a-zA-Z0-9_] ]]; then
        echo "Invalid directory name. Only letters, numbers, and underscores are allowed."
        exit 1
    fi
}

# Function to create a directory if it doesn't exist
create_directory() {
    dir_name="$1"
    
    if [ ! -d "$dir_name" ]; then
        mkdir "$dir_name"
        echo "Folder '$dir_name' created."
    else
        echo "Folder '$dir_name' already exists."
    fi
}

# Read the directory name from the user
read -p "Enter the directory name: " user_dir_name

# Validate the directory name
validate_directory_name "$user_dir_name"

# Create the directory
create_directory "$user_dir_name"

# Change directory to the new directory
cd "./$user_dir_name" || { echo "Failed to change directory to $user_dir_name"; }
../main

# Confirmation message
echo "Changed directory to $(pwd)"
