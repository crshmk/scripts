#!/bin/bash
SRC="/Users/user/path_to/scripts"
SYMLINK="/usr/local/bin"

ln -s $SRC/backup/backup-project/backup-project.sh $SYMLINK/backup-project
ln -s $SRC/backup/backup-machine/backup-machine.sh $SYMLINK/backup-machine
ln -s $SRC/backup/pull/pull.sh $SYMLINK/pull
ln -s $SRC/init-project $SYMLINK/init-project
ln -s $SRC/remote/index.js $SYMLINK/remote
ln -s $SRC/latest-commits $SYMLINK/latest-commits 

mv $SRC/backup/backup-project/mysql-cnf $SRC/backup/backup-project/mysql.cnf 
mv $SRC/backup/backup-project/.env-example $SRC/backup/backup-project/.env 
mv $SRC/backup/pull/.env-example $SRC/backup/pull/.env 
mv $SRC/backup/backup-machine/backup-paths-example.txt $SRC/backup/backup-machine/backup-paths.txt 
mv $SRC/backup/backup-machine/.env-example $SRC/backup/backup-machine/.env 
mv $SRC/.env-example $SRC/.env 
