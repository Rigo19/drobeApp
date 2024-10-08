#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists TypesOfClothing 
    ( 
    clothingTypeID INT NOT NULL, 
    clothingType VARCHAR(50) NOT NULL, 
    PRIMARY KEY (clothingTypeID) 
    );
    "


# Instructions for usage of the program:
#in your terminal, enter './createTypesOfClothing.sh' to run the script.

#As with the other shell scripts, if you get a permissions denied error, enter the command
#'chmod +x createTypesOfClothing.sh' to make the script executable
