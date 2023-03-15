#!/bin/bash
counter=0
for file in $(git diff --name-only HEAD~1 HEAD)
do
if [[ $(file -b --mime-type $file) == text/* ]]
    then
    tabs=$(grep -с $"\t" $file | wc -l)
    if tabs > 0
        then
        counter=$(counter+tabs)
    fi
fi
done
echo  $counter
