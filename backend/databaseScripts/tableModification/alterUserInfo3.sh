#!/bin/bash
sudo mysql -u root -p -e "
    USE drobeApp;
    alter table UserInfo add column isRegistrationConfirmed BOOL not null default 0;
    commit;
    update UserInfo set isRegistrationConfirmed = TRUE where userID > 0;
    commit;"