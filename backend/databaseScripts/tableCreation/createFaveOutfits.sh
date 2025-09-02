#!/bin/bash
sudo mysql -u root -p -e "
USE drobeApp;

CREATE TABLE IF NOT EXISTS FaveOutfits (
    userID INT NOT NULL,
    faveOutfitID INT NOT NULL AUTO_INCREMENT,
    outfitID INT NOT NULL,
    outfitName VARCHAR(100) NOT NULL,

    timeFavorited TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    timeLastModified TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,

    FOREIGN KEY (outfitID) REFERENCES Outfits(outfitID) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,

    PRIMARY KEY (faveOutfitID)
);

-- Optionally, create an index on userID for faster lookups
CREATE INDEX idx_userID ON FaveOutfits(userID);


"
