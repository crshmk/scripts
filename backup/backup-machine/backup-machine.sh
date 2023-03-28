#!/bin/bash 

source ../../.env
source .env

rsync -av --recursive --files-from=backup-paths.txt $USERDIR /Volumes/$USB1/$BACKUPDIR
