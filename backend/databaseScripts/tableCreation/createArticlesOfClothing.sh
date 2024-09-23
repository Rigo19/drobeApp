#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists ArticlesOfClothing 
    ( 
    clothingArticleID INT AUTO_INCREMENT,
    clothingTypeID INT NOT NULL, 
    clothingType VARCHAR(50) NOT NULL, 
    clothingArticleName VARCHAR (50) NOT NULL,
    userID INT NOT NULL,
    timeAdded TIMESTAMP NOT NULL,
    numberOfOutfitsAssociatedWith INT NOT NULL,
    PRIMARY KEY (clothingArticleID) 
    );
    "

# Instructions for usage of the program:
#in your terminal, enter './createArticlesOfClothing.sh' to run the script.

# As with the other shell scripts, if you get a permissions denied error, enter the command
#'chmod +x createArticlesOfClothing.sh' to make the script executable.

# below are the columuns featured in this DB table
#ClothingArticleID	ClothingTypeID	ClothingType	ClothingArticleName	userID	TimeAdded	NumberOfOutfitsAssociatedWith