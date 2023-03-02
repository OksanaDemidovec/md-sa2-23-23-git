#!/bin/bash

# Get the list of remote repositories
remote_list=$(git remote)

# Loop for  the list of remote repositories
for remote_name in $remote_list
do
# Push changes to the remote repository
git push $remote_name
done
