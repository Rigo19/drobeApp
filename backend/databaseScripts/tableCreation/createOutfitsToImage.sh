#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists OutfitsToImage
    ( 
    outfitID INT,
    Image MEDIUMBLOB NOT NULL,
    PRIMARY KEY (outfitID)


    );
    "

# below are the columns featured in this DB table
# outfitID  Image