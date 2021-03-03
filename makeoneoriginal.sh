#!/bin/bash

echo "Build one orginal file ..." 

HTML=".mnmlist.md"

for item in `cat .originalarchive.tmp | sort | uniq | grep -v 0000-00-00`;
  do
    FILE=$(echo "$item" | awk -F "_" '{print $2}')
    TITLE=$(head -n 1 ./${FILE}.md | tail -1)
    echo "Processing ${FILE}.md ..."
    echo "## &raquo; $TITLE" >> $HTML
    echo "" >> $HTML
    cat "./${FILE}.md" | tail -n +3  >> $HTML
    echo "" >> $HTML
  done

sed -i 's/(\//(https:\/\/mnmlista.pl\//g' $HTML;
