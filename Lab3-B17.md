# Basic Linux Commands
## "pwd" command:

```bash
>>pwd
```

Explanation : 
pwd - print work directory 
this command shows the current location in the file system. 


### The output is as follows :
```bash
/home/ashishkumar/UPES/linux_lab
```

## "ls" commands:

```bash
>>ls 
```

Explanation: 
ls -l  -> Detailed list (permissons ,size ,date )
ls -a  -> Shows hidden files (those starting with .)
ls-la  -> Combined files (Including hidden ones )with detailed info in the current directory . 


### The output is follows :
![Image](<Screenshot from 2025-08-13 13-30-37.png>)


## "cd" command ;

```bash
>>cd
```
Explanation:
cd - Change directory 
cd -> move into a directory 




### The output is follows as : 
![Image](<Screenshot from 2025-08-18 14-43-47-1.png>)


# 2. File and Directory Management 

## "mkdir" command :

```bash 
>>mkdir new_folder 
```
Explanation : 
mkdir -> make directory 
create a new folder 
It creates multiple directories at once .

### The output is follows as :
![Image](<Screenshot from 2025-08-18 15-48-24.png>)


## "touch" command : 
```bash 
>>touch file.txt 
```
Explanation :
To create new empty file 
if file exists, it just updates the timestamps. 

### The output is follows as : 
![Image](<Screenshot from 2025-08-18 16-06-44.png>)

## "cp" command : 
```bash 
>>cp -r folder1 folder2 
```
Explanation : 
TO copy files and directories from one to another .

### The output is follows as :




## "mv" command :
```bash 
>>mv oldname.txt newname.txt 
```
Explanation : 


### The output is follows as :




## "rm" command : 
```bash 
>>rm file.txt 
>>rm -r folder_name 
```


Explanation :
This command is used to remove files.
Be careful! There is no undo.

### The output is follows as :



# File Viewing & Editing 

## "cat'command :

```bash
>>cat file.txt 
```
Explanation : 
TO view the file content 
This command displays content in terminal.



# The output is follows as : 
![Image](<Screenshot from 2025-08-18 20-33-55.png>)




## "nano" command : 

```bash 
>>nano file.txt 
```
Explanation : 
Ctrl + O	Save file (write out)
Ctrl + X	Exit nano
Ctrl + R	Insert another file into the current one
Ctrl + K	Cut (remove) a line
Ctrl + U	Paste (after cutting)
Ctrl + W	Search text
Ctrl + \	Search and replace
Ctrl + G	Help menu
Ctrl + C	Show cursor position

It used to edit the text.


### The output is follows : 



## "clear" command : 

```bash 
>>clear 
```

Explanation : 
It is used to clear the terminal.

Shortcut -> CTRL + L 
  

### The output is follows as : 
![Image](<Screenshot from 2025-08-18 20-48-31.png>)


# System commands : 


## "echo" command : 
```bash 
>>echo "  "
```
Explanation : 
It is used to print Text. 
 Useful for debugging or scripting. 

 ### The output is follows as :
![Image](<Screenshot from 2025-08-18 20-58-08-1.png>)

## "whoami" command : 

```bash 
>>whomi 
```

Explanation : 
It is used to show current user . 

### The output is follows as : 
![Image](<Screenshot from 2025-08-18 21-04-19.png>)

## "man" command :

```bash 
>>man ls 
```

Explanation : 

### The output is follows as : 
![Image](<Screenshot from 2025-08-18 21-08-15.png>)

## 






