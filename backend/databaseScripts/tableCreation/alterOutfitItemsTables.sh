#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    alter table OutfitItems drop column clothingTypeID;
    alter table OutfitItems drop column userID;
    alter table OutfitItems drop column clothingArticleName;
    "

# below are the changes this script does
# deletes the columns for the team to alter OutfitItems