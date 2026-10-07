#!/bin/bash
# Move every file in ./files into the folder named after the
# lowercase version of the file's first letter (e.g. Kay.txt -> k/).

for file in files/*; do
    [ -f "$file" ] || continue

    name="${file##*/}"      # filename without the "files/" prefix
    first="${name:0:1}"     # first character
    first="${first,,}"      # convert to lowercase

    [ -d "$first" ] || mkdir "$first"
    mv "$file" "$first/"
done
