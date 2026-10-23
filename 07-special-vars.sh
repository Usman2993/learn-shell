#!/bin/bash

### Special Variables ###

echo "all arguments passed to the script: $@"
echo "number of arguments passed to the script: $#"
echo "first variable passed to the script: $1"
echo "script name: $0"
echo "realpath: $(realpath $0)"
echo "who is running current script: $USER"
echo "Directory of the current script: $PWD"
echo "Home directory of the current user: $HOME"
echo "PID of the current script: $$"
sleep 10 &
echo "PID of the command running in the background: $!"
wait $! #scripts wait untill the background process is completed
echo "Line number of the current script: $LINENO"
echo "previous command exit status: $?"
echo "total time taken by the script: $SECONDS seconds"
