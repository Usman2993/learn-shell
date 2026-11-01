#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

source_dir=$1
days=${2:-14} # if user is not passing days, we will take 14 days as default

usage(){
    echo -e "${R}USAGE: $0 [SOURCE_DIR] [days(Optional, default: 14)]${N}"
    exit 1 
}

if [ -z "$source_dir" ]; then
    echo "ERROR:: Missing parameter"
    usage
fi  

if [ ! -d "$source_dir" ]; then
    echo -e "${R}ERROR:: $source_dir is not a valid directory${N}"
    usage
fi


