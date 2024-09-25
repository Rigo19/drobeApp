#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists UserInfo
    ( 
    userID INT NOT NULL,
    firstName VARCHAR(50) NOT NULL,
    lastName VARCHAR(50) NOT NULL,
    timeaAccountCreated TIMESTAMP,
    timeZone VARCHAR(5) NOT NULL,
    location VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    hashedPassword VARCHAR(255) NOT NULL,
    PRIMARY KEY (userID) 
    );
    "

# below are the columuns featured in this DB table
#userID	firstName lastName timeAccountCreated timeZone location email hashedPassword