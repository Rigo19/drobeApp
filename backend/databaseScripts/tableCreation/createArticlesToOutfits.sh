sudo mysql -u root -p -e "use drobeApp;
    create table if not exists ArticlesToOutfits
    ( 
    outfitID INT,
    clothingArticleID INT,
    clothingTypeID INT NOT NULL,
    userID INT NOT NULL,
    clothingArticleName VARCHAR (50) NOT NULL,
    );
    "


# below are the columuns featured in this DB table
#outfitID  ClothingArticleID	ClothingTypeID	ClothingArticleName	 userID	