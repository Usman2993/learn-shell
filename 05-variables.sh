#!/bin/bash

START_TIME=$(date +%s)

echo "Script started Execution at: $START_TIME"

sleep 10

END_TIME=$(date +%s)

echo "Script completedExecution at: $END_TIME"

TOTAL_TIME=$((END_TIME-START_TIME))

echo "total time taken: $TOTAL_TIME"