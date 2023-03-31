### backup-machine 
> backup files listed in backup/backup-paths.txt to drives listed in backup/.env

### backup-project 
> backup a project and database to a mounted usb
```bash 
backup-project project-name db-table
```

### init-project 
> [clone](https://github.com/crshmk/webpack-react) and open a new react project 

### pull 
> rsync a remote folder to a local folder referencing `project-name.env`
```bash
pull project-name
```

### remote 
> open a repo in github, gitlab, or bitbucket with either protocol 

---

## setup 
```bash 
SRC="/Users/path/to/scripts"
SYMLINK="/usr/local/bin"

ln -s $SRC/backup/backup-project/backup-project.sh $SYMLINK/backup-project
ln -s $SRC/backup/backup-machine/backup-machine.sh $SYMLINK/backup-machine
ln -s $SRC/backup/pull/pull.sh $SYMLINK/pull
ln -s $SRC/init-project $SYMLINK/init-project
ln -s $SRC/remote/index.js $SYMLINK/remote

mv $SRC/backup/backup-project/mysql-cnf $SRC/backup/backup-project/mysql.cnf 
mv $SRC/backup/backup-project/env-example $SRC/backup/backup-project/.env 
mv $SRC/backup/pull/env-example $SRC/backup/pull/.env 
mv $SRC/backup/backup-machine/backup-paths-example.txt $SRC/backup/backup-machine/backup-paths.txt 
mv $SRC/backup/backup-machine/env-example $SRC/backup/backup-machine/.env 
mv $SRC/env-example $SRC/.env 
```
