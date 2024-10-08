#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists Outfits
    ( 
    outfitID INT AUTO_INCREMENT NOT NULL,
    outfitName VARCHAR(100) NOT NULL,
    userID INT NOT NULL,
    timeCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    timeLastModified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (outfitID) 
    );
    "


# below are the columuns featured in this DB table
#outfitID    outfitName    userID    timeCreated    timeLastModified