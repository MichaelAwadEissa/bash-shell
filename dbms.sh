#!/bin/bash

# Function to display the main menu
main_menu() {
    echo "========================"
    echo "      DBMS Main Menu"
    echo "========================"
    echo "1. Create Database"
    echo "2. List Databases"
    echo "3. Connect to Database"
    echo "4. Drop Database"
    echo "5. Exit"
    echo -n "Enter your choice [1-5]: "
}

# Main script loopwhile true; do

while (true); do
    main_menu
    read choice
    case $choice in
        1) . ./create_db_from-user.sh ;;  # Assuming you have this function defined elsewhere
        2) . ./list_db.sh ;;   # Assuming you have this function defined elsewhere
        3) . ./connect_db.sh ;;  # Call connect_db.sh script
        4) . ./drop_db.sh ;;    # Assuming you have this function defined elsewhere
        5) exit 0 ;;
        *) echo "Invalid choice, please try again." ;;
    esac
done
