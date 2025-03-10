#!/bin/bash
#Move all .log files to backup folder
#
mkdir -p backup # creates backup directory if it doesn't exists
cp *.log backup/
echo " all .log files copied to backup folder!"
ls backup


