#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
CREATE TABLE IF NOT EXISTS FaveOutfitItems (
    FaveOutfitID INT NOT NULL,
    clothingArticleID INT NOT NULL,
    PRIMARY KEY (FaveOutfitID, clothingArticleID),
    FOREIGN KEY (FaveOutfitID) REFERENCES FaveOutfits(faveOutfitID) ON DELETE CASCADE,
    FOREIGN KEY (clothingArticleID) REFERENCES ArticlesOfClothing(clothingArticleID) ON DELETE CASCADE
);
"

# below are the columuns featured in this DB table
#outfitID  ClothingArticleID    ClothingTypeID    ClothingArticleName     userID 