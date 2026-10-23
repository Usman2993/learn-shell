#!/bin/bash

echo "Please enter the marks"
read marks

# LT ---> less than

if [ $marks -lt 33 ]; then
    echo "You are failed"
elif [ $marks -lt 50 ]; then
    echo "third class"
elif [ $marks -lt 60 ]; then
    echo "second class"
elif [ $marks -lt 75 ]; then
    echo "first class"
else 
    echo "distinction"
fi

echo "End"
