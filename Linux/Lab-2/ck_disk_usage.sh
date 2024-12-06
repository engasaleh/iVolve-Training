#!/bin/bash

# Threshold percentage (default: 10%)
THRESHOLD=10

# Get the disk usage percentage for the root file system
USAGE=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

# Email settings
EMAIL="xereja2506@datingel.com"
SUBJECT="Disk Usage Alert: Root File System Exceeded ${THRESHOLD}%"
MESSAGE="Warning: Disk usage on the root filesystem is at ${USAGE}%!"

# Check if usage exceeds the threshold
if [ "$USAGE" -gt "$THRESHOLD" ]; then
    echo "$MESSAGE" | mail -s "$SUBJECT" "$EMAIL"
fi

