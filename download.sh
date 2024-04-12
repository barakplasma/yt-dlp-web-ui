#!/bin/bash

# Read the URL from stdin
read url

# Change directory to the desired download location
cd $STORAGE_LOCATION

# Run yt-dlp with the URL and output progress
yt-dlp --progress --newline "$url" 2>&1

# Capture the exit code of yt-dlp
exit_code=$?

# Check the exit code and send a corresponding message
if [ $exit_code -eq 0 ]; then
    echo "Download succeeded with exit code $exit_code"
else
    echo "Download failed with exit code $exit_code"
fi

# Exit the script with yt-dlp's exit code
exit $exit_code

