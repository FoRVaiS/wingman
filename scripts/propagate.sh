#!/bin/bash

target_directory=packages
command=$@

# Check if the target directory was provided as an argument
if [ -z "$target_directory" ]; then
    echo "Please provide the target directory as an argument"
    exit 1
fi

# Loop through all subdirectories of the target directory
for dir in "$target_directory"/*/
do
  # Strip trailing slash from the directory name
  dir=${dir%*/}

  # Check if the subdirectory is a directory
  if [ -d "$dir" ]; then
    # Change directory to the subdirectory and run the command
    cd "$dir" || exit
    $command
    # Change back to previous directory
    cd - > /dev/null 2>&1
  fi
done
