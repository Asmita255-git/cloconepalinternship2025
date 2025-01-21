# Task 1
asmita@asmita-Inspiron-3501:/home$ cd asmita
# asmita@asmita-Inspiron-3501:~$ mkdir /home/project_files
# mkdir: cannot create directory ‘/home/project_files’: Permission denied
# asmita@asmita-Inspiron-3501:~$ sudo chmod 755 asmita
# chmod: cannot access 'asmita': No such file or directory
# asmita@asmita-Inspiron-3501:~$ mkdir project_files
# asmita@asmita-Inspiron-3501:~$ cd home asmita
# bash: cd: too many arguments
# asmita@asmita-Inspiron-3501:~$ cd /home/asmita
# asmita@asmita-Inspiron-3501:~$ touch shellscript.sh



## Task 2: User and Group Management
# Create a new group named "developers"
sudo groupadd developers
# Create a new user named "intern_user"
sudo useradd intern_user
 #Add "intern_user" to the "developers" group
 sudo usermod -aG developers intern_user
#Set an appropriate password for the user
asmita@asmita-Inspiron-3501:~$ sudo passwd intern_user
[sudo] password for asmita:                
New password: 
Retype new password: 
passwd: password updated successfully


### Task 3: Permissions and Ownership
 #Change the ownership of the "project_files" directory to "intern_user" and group "developers"
 sudo chown intern_user:developers project_files
#  The owner can read, write, and execute
#   The group can read and execute
#   Others should have no permissions
 sudo chmod 750 project_file

### Task 4: Additional Tasks
#Create a welcome text file inside the "project_files" directory
cd /home/asmita/project_files
 sudo touch welcome.txt
 #Change the permission of welcome.txt to allow full access(r,w,x)to all.
 sudo chmod 777 welcome.txt 
 echo "Created on: $(date)" > welcome.txt
cat welcome.txt #Dispaly the content of welcome.txt
#Change the group ownership of welcome.txt to the"developer" group
sudo chgrp developers welcome.txt
sudo chmod 755 welcome.txt


#Task:5
#Directory Cretion
mkdir directory_name
#permission
sudo chmod 777 filename
#user creation
sudo useradd user_name
# Add to group
sudo groupadd group_name
#File Creation
sudo touch welcome.txt