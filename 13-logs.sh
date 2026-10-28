#!/bin/bash

user_id=$(id -u)

logs_folder="/var/log/shell-practice"
logs_folder="${logs_folder}/${0}.log"

if [ $user_id -ne 0 ]; then
    echo "Please run the script with sudo access"
    exit 1   
fi

mkdir -p $logs_folder

echo "Script started execution at $(date +"%F %T")"

validate(){
    if [ $1 -ne 0 ]; then
        echo "${2} failed" | tee -a $logs_file
        exit 1
    else 
        echo "${2} successful" | tee -a $logs_file
    fi
}

echo "proceeding..."

dnf install nginx -y &>>$logs_file
validate $? "nginx installation"
    

dnf install mysql -y &>>$logs_file
validate $? "mysql installation"

echo "Script Completed execution at $(date +"%F %T")"

echo "still proceeding..."    
