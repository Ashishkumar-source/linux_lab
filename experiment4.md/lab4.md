# Shell tutorial - file pemission with chmod and chown 
## 1. understanding file permissions in linux 
### each file/directory in linux has: 

owner -> the user who created the files.
group -> a group of user who may share access.
others -> everyone else.

## permission type 

r -> Read (4 in numeric)
w -> Write (2 in numeric )
x -> Execute (1 in numeric)

## permission layout 
```bash 
>>-rwxr-xr--
```
Breakdown :
- -> regular file (d =directory, l = symlink , etc.)
rwx -> owner has read , write execute 
r-- -> others have read only 

## 2. chmod - change file permissions 

### syntax 
```bash
>>chmod [options ]mode file name 
```
modes can be set in numerical (octal) or symbolic form. 

### (A)Numeric (octal) Method 
Each permission is represented as a number:

    Read = 4
    Write = 2
    Execute = 1

    Add them up:

    7 = rwx
    6 = rw-
    5 = r-x
    4 = r--
    0 = ---

### Example:

```bash
chmod 755 script.sh
```
### output: 
![Image](<Screenshot from 2025-08-21 19-45-41.png>)

```bash
chmod 000 file.txt 
```
### output: 
![Image](<Screenshot from 2025-08-20 13-20-37.png>)

```bash 
chmod 777 file.txt 
```
### output :
![Image](<Screenshot from 2025-08-20 13-22-14.png>)

```bash 
chmod 766 file.txt
```
### output : 
![Image](<Screenshot from 2025-08-22 01-17-39-1.png>)

```bash 
chmod 711 file.txt
```
### output : 
![Image](<Screenshot from 2025-08-22 01-25-15.png>)

Meaning:

    Owner: 7 → rwx
    Group: 5 → r-x
    Others: 5 → r-x

## (B) Symbolic Method

Use u (user/owner), g (group), o (others), a (all). Operators:

    + → Add permission
    - → Remove permission
    = → Assign exact permission

### Examples:
```bash
chmod u+x script.sh     # Add execute for owner
``` 
### output: 
![Image](<Screenshot from 2025-08-21 23-28-51.png>)

```bash
chmod g-w notes.txt     # Remove write from group
```
### output:
![Image](<Screenshot from 2025-08-21 20-17-27.png>)

```bash 
chmod o=r file.txt      # Set others to read only
```
### output:
![Image](<Screenshot from 2025-08-21 20-12-42.png>)


```bash 
chmod a+r report.txt    # Everyone gets read access
```
### output:
![Image](<Screenshot from 2025-08-21 20-22-23.png>)





### (C) Recursive Changes
```bash
chmod -R 755 /mydir
``` 


    -R → applies changes recursively to all files/subdirectories.

## 3. chown – Change File Ownership
 ### Syntax
```bash
chown [options] new_owner:new_group filename
```
 ### Examples:

chown vibhu file.txt           # Change owner to user 'vibhu'
chown vibhu:dev file.txt       # Change owner to 'vibhu' and group to 'dev'
chown :dev file.txt            # Change only group to 'dev'
chown -R vibhu:dev /project    # Recursive ownership change

## 4. Putting It All Together
 ### Example Scenario
```bash 
touch project.sh
ls -l project.sh
```

Output:


Now : 



## 🔹 5. Quick Reference Table
Numeric 	Permission  	Meaning
0 	        --- 	       No access
1          	--x 	     Execute only
2       	-w- 	Write only
3 	        -wx 	Write + Exec
4       	r-- 	Read only
5 	        r-x 	Read + Exec
6       	rw- 	Read + Write
7       	rwx 	Full access

✅ Key Tip: Use numeric for quick settings (e.g., 755, 644) and symbolic for fine adjustments (u+x, g-w).
