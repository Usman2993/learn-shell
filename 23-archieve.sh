#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

source_dir=$1
destination_dir=$2
days=${3:-14} # if user is not passing days, we will take 14 days as default

usage(){
    echo -e "${R}USAGE: $0 [SOURCE_DIR] [DESTINATION_DIR] [days(Optional, default: 14)]${N}"
    exit 1 
}

if [ -z "$source_dir" ] || [ -z "$destination_dir" ]; then
    echo "Either source or destination directory are missing"
    usage
    
fi

if [ ! -d "$source_dir" ]; then
    echo -e "${R}ERROR:: $source_dir does not exist${N}"
    exit 1
fi

if [ ! -d "$destination_dir" ]; then
    echo -e "${R}ERROR:: $destination_dir does not exist${N}"
    exit 1
fi