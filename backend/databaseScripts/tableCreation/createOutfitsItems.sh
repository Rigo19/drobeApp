#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists OutfitItems
    ( 
    outfitID INT NOT NULL,
    clothingArticleID INT NOT NULL
    );
    "


# below are the columuns featured in this DB table
#outfitID  ClothingArticleID    ClothingTypeID    ClothingArticleName     userID 