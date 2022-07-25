#!/bin/bash

# PROGRAM: Write a shell script to take a full backup of a folder on Wednesday and Friday,
# and the rest of the days to take a partial backup (only modified files).


# full back up of sample folder; backup date is included in file name; day of week (date +%w) determines full vs. partial backup.
if [$(date +%w) -eq "3"] || [$(date +%w) -eq "5"]; then
    tar -zcvf backup-folder/backup-$(date +%Y%m%d-%H:%M:%S).tar.gz sample-folder
else
    # clear folder which must hold recently modified files for partial backup
    rm /Users/brendongong/scripting-exercise/mod-folder/*
    # copy recently modified files into mod-folder
    cp $(find sample-folder -mtime -1) mod-folder/
    # perform partial backup on the mod-folder containing recently modified files
    tar -zcvf backup-folder/backup-$(date +%Y%m%d-%H:%M:%S).tar.gz mod-folder
fi


# DOCUMENTATION
# usage -> ./backup.sh
# cron utility (crontab -l for list or -e for edit) to automate script execution at a specified time and date