#!/bin/bash
sudo mysql -u root -p -e "
    USE drobeApp;
    ALTER TABLE UserInfo DROP lastName;
    ALTER TABLE UserInfo RENAME COLUMN firstName TO name;
    ALTER TABLE UserInfo RENAME COLUMN location to zipCode;
    ALTER TABLE UserInfo ADD birthday date;
    "