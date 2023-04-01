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

## Setup 

edit `$SRC` and `$SYMLINK` paths in `setup.sh` 
```bash
setup
```
