#! /bin/bash

DATE=$(date +"%A %d-%m-%Y %T")

vim tempnote

echo -e "\n\n$DATE" >> NOTES.md
cat tempnote >> NOTES.md
rm tempnote
git add .
git commit -m "$DATE"
git push
