#!/bin/bash

if [ -z "$1" ]; then
    echo "Erorr: Please provide a log directory path"
    echo "Usage: ./log_archive_tool.sh <log-directory>"
    exit 1
fi

LOG_DIR=$1

echo "Target Folder to archive: $LOG_DIR"

if [ ! -d "$LOG_DIR" ]; then
    echo "Error: Directory does not exist"
    exit 1
fi

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
echo $TIMESTAMP

ARCHIVE_DIR="archives"

mkdir -p "$ARCHIVE_DIR"