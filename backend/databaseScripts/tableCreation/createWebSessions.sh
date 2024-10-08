#!/bin/bash
sudo mysql -u root -p -e "use drobeApp;
    create table if not exists WebSessions
    ( 
    sessionID VARCHAR(36) NOT NULL,
    userIDAssociated INT NOT NULL,
    ipAddress VARCHAR(36) NOT NULL,
    timeLastAccessed TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NOT NULL,
    expiryTime TIMESTAMP NOT NULL,
    PRIMARY KEY (sessionID) 
    );
    "
# below are the columuns featured in this DB table
#sessionID	userIDAssociated	ipAddress	timeLastAccessed expiryTime