#!/bin/bash
sudo mysql -u root -p -e "
    USE drobeApp;
    alter table UserInfo modify column userID int auto_increment;
    "