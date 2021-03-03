#!/bin/bash

echo "Build one file ..." 

HTML=".mnmlista.md"

for item in `cat .archive.tmp | sort | uniq`;
  do
    DATE=$(echo "$item" | cut -c -10)
    FILE=$(echo "$item" | awk -F "_" '{print $2}')
    LINK=$(head -n 3 ./source/${FILE}.md | tail -1)
    TITLE=$(head -n 1 ./source/${FILE}.md | tail -1)
    if [ "$DATE" != "0000-00-00" ]; then
          echo "Processing source/${FILE}.md ..."
          echo "## &raquo; $TITLE" >> $HTML
          echo "" >> $HTML
          cat "./source/${FILE}.md" | tail -n +4  >> $HTML
          echo "" >> $HTML
    fi
  done

sed -i 's/(\//(https:\/\/mnmlista.pl\//g' $HTML;
