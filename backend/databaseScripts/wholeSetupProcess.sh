#!/bin/bash
chmod +x ./databaseCreation/databaseCreation.sh
chmod +x ./tableCreation/createArticlesToImage.sh
chmod +x ./tableCreation/createArticlesOfClothing.sh
chmod +x ./tableCreation/createOutfitItems.sh
chmod +x ./tableCreation/createOutfits.sh
chmod +x ./tableCreation/createTypesOfClothing.sh
chmod +x ./tableCreation/createUserInfo.sh
chmod +x ./tableCreation/createWebSessions.sh


./databaseCreation/databaseCreation.sh
./tableCreation/createArticlesToImage.sh
./tableCreation/createArticlesOfClothing.sh
./tableCreation/createOutfitItems.sh
./tableCreation/createOutfits.sh
./tableCreation/createTypesOfClothing.sh
./tableCreation/createUserInfo.sh
./tableCreation/createWebSessions.sh