
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists TypesOfClothing 
    ( 
    clothingTypeID INT, 
    clothingType VARCHAR(50) NOT NULL, 
    PRIMARY KEY (clothingTypeID) 
    );
    "