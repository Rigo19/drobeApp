sudo mysql -u root -p -e "use drobeApp;
    create table if not exists ArticlesToOutfits
    ( 
    outfitID INT AUTO_INCREMENT,
    clothingArticleID INT AUTO_INCREMENT,
    clothingTypeID INT NOT NULL,
    userID INT NOT NULL,
    clothingArticleName VARCHAR (50) NOT NULL,
    PRIMARY KEY (outfitID) 
    );
    "


# below are the columuns featured in this DB table
#outfitID  ClothingArticleID	ClothingTypeID	ClothingArticleName	 userID	