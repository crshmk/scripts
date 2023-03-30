#!/bin/bash
source ../../.env
source .env

BACKUP_PATH="/Volumes/$USB1/$BACKUPDIR"
DATE=`date +%Y-%m-%d`
IS_DISK_MOUNTED=false
MYSQL_TABLE=$2
NODE_MODULES_PATH="$PROJECT_PATH/node_modules"
NODE_MODULES_TEMP="$TMPDIR/node_modules_temp_$PROJECT_NAME"
PROJECT_NAME=$1
PROJECT_PATH="$DEVDIR/$PROJECT_NAME"

if [[ $PROJECT_NAME == "" ]]; then 
  echo "error: provide a project name, e.g. backup-project utils"
  exit 2
fi

setIsDiscMounted() {
  if [[ $(mount | awk '$3 == "/Volumes/'"$1"'" {print $3}') != "" ]]; then
    IS_DISK_MOUNTED=true
  fi
}

setIsDiscMounted $USB1

if [[ $IS_DISK_MOUNTED == false ]]; then 
  echo "error: insert backup drive $USB1"
  exit 2
fi 

if [ ! -d "$PROJECT_PATH" ]; then
  echo "error: projet $PROJECT_NAME does not exist at $PROJECT_PATH"
  exit 2
fi
mv $NODE_MODULES_PATH $NODE_MODULES_TEMP 

rsync -av $PROJECT_PATH $BACKUP_PATH

mv $NODE_MODULES_TEMP $NODE_MODULES_PATH

if [[ ! $MYSQL_TABLE == '' ]]; then 
  mysqldump --defaults-extra-file=mysql.cnf $MYSQL_TABLE > $BACKUP_PATH/$MYSQL_TABLE-$DATE.sql
  echo "database backup to ${BACKUP_PATH}/${MYSQL_TABLE}-${DATE}.sql"
fi 

echo "$PROJECT_NAME backed up to $USB1/$BACKUPDIR"
