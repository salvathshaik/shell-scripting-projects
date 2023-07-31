#!/bin/bash

#this script is to take the backup of logs or any work you done. and this is automated shell script that runs everyday at 11:50PM IST using cronttab

#trying to give the uniqueu name for every backup including date as below format as a file name
# Get the current date to use in the backup filename
backup_date=$(date +%Y%m%d%H%M%S)

#defining full name of the backup file
backup_filename="backup_$backup_date.tar.gz"

# Create the backup archive using tar
tar -cvzf /root/"$backup_filename" ./* #first parameter is the backup file name with it's path to store
				       # second paramter is from where we should take the backup(path of the backup folder) 
				       #here we are taking backup from curent folder
				       #-cvzf is for compressinng the tar file and -xvzf is for extractinv the tar file . 
				       #just a first letter change c:compress , x:extract here.

echo "Backup created: $backup_filename"


#I have used crontab to schedule the backup script to run every day at 11:50 PM. 
#opened the crontab configuration by running : crontab -e and then you can run crontab -l to see the scheduled configurations.
#and added the following line at the end of the crontab file: 50 23 * * * /root/shell-scripting-projects/2_backup_log_files.sh >> /root/backup_log.log 2>&1
         #the >> operator appends the output (both standard output and standard error) of the cron job to the specified log file (backup_log.log). The 2>&1 part ensures that both standard output (1) and standard error (2) are redirected to the log file.
#then it will run this at specified timing and take the logs or your work done.
#To remove all crontab schedules for the current user, you can use the crontab -r command. 
#Remember to be cautious when editing crontab, especially with root privileges, as incorrect changes can cause unintended issues with your scheduled tasks. Double-check your changes before saving the crontab file. so prepare first and setup at once.

