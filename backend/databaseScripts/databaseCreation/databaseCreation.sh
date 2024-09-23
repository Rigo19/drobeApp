#!/bin/bash
sudo mysql -u root -p -e "create database drobeApp"

#Run the file using ./databaseCreation.sh

#If you get a permissions denied error message, 
# enter the linux command 'chmod +x databaseCreation.sh' 
# which will make it executable and try running the script again.

