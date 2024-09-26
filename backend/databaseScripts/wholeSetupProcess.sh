#!/bin/bash
chmod +x ./databaseCreation/databaseCreation.sh
chmod +x ./tableCreation/createArticlesToImage.sh
chmod +x ./tableCreation/createArticlesOfClothing.sh
chmod +x ./tableCreation/createArticlesToOutfits.sh
chmod +x ./tableCreation/createOutfitsByUser.sh
chmod +x ./tableCreation/createTypesOfClothing.sh
chmod +x ./tableCreation/createUserInfo.sh
chmod +x ./tableCreation/createWebSessions.sh


./databaseCreation/databaseCreation.sh
./tableCreation/createArticlesToImage.sh
./tableCreation/createArticlesOfClothing.sh
./tableCreation/createArticlesToOutfits.sh
./tableCreation/createOutfitsByUser.sh
./tableCreation/createTypesOfClothing.sh
./tableCreation/createUserInfo.sh
./tableCreation/createWebSessions.sh


