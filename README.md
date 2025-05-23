### backup-machine 
> backup files listed in backup/backup-paths.txt to drives listed in backup/.env

### backup-project 
> backup a project and database to a mounted usb
```bash 
backup-project project-name db-table
```

### init-project 
> [clone](https://github.com/crshmk/react-ts) and open a new react project 

### pull 
> rsync a remote folder to a local folder referencing `project-name.env`
```bash
pull project-name
```

### latest-commits 
> list latest commits for each local branch

### remote 
> open a repo in github, gitlab, or bitbucket with any protocol 

### stashes 
> list them 

### unpushed 
> list commits not pushed to remote

---

## Setup 

edit `$SRC`, `$SYMLINK`, etc. in `setup.sh` and update all `.env` files 
```bash
./setup.sh
```
