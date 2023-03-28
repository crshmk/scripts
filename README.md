### backup-machine 
> backup files listed in backup/backup-paths.txt to drives listed in backup/.env

### init-project 
> clone and open a new react project 

### remote 
> open a repo in github, gitlab, or bitbucket with either protocol 

---

## setup 
```bash 
ln -s /Users/path/to/scripts/backup/backup-machine/backup-machine.sh /usr/local/bin/backup-machine
ln -s /Users/path/to/scripts/init-project /usr/local/bin/init-project
ln -s /Users/path/to/scripts/remote/index.js /usr/local/bin/remote

mv /Users/path/to/scripts/backup/backup-machine/backup-paths-example.txt /Users/path/to/scripts/backup/backup-machine/backup-paths.txt 
mv /Users/path/to/scripts/backup/backup-machine/.env-example Users/path/to/scripts/backup/backup-machine/.env 
mv /Users/path/to/scripts/.env-example /Users/path/to/scripts/.env 
```