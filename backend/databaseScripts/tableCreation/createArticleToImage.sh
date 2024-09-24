#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists ArticlesToImage
    ( 
    clothingArticleID INT AUTO_INCREMENT,
    Image MEDIUMBLOB,
    PRIMARY KEY (clothingArticleID) 
    );
    "


# below are the columuns featured in this DB table
#ClothingArticleID	Image