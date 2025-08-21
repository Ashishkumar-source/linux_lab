# Shell tutorial - file pemission with chmod and chown 
## 1. understanding file permissions in linux 
### each file/directory in linux has: 
``` bash 
owner -> the user who created the files.
group -> a group of user who may share access.
others -> everyone else.
```
## permission type 
``` bash 
r -> Read (4 in numeric)
w -> Write (2 in numeric )
x -> Execute (1 in numeric)
```
## permission layout 
```bash 
>>-rwxr-xr--
Breakdown :
- -> regular file (d =directory, l = symlink , etc.)
rwx -> owner has read , write execute 
r-- -> others have read only 
```
## chmod - change file permissions 
### syntax 
```bash
>>chmod [options ]mode file name 
```
modes can be set in numerical (octal) or symbolic form. 
