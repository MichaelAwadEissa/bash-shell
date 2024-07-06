#! user/bin/csh

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