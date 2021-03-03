#!/bin/bash

echo "Build original archive index ..." 

mkdir -p "public/original/"

HTML="public/original/index.html"
FILES="<p><strong>All in one file: <a href=\"/mnmlist.epub\">EPUB</a>&nbsp;<a href= \"/mnmlist.html\">HTML</a></strong></p>"

echo "$HEAD<title>&raquo; mnmlist</title>
<meta name=\"robots\" content=\"noindex\">
<meta name=\"referrer\" content=\"no-referrer\">
</head><body><h1>mnmlist: archives</h1>
${FILES}<ul>" > $HTML

OLD_YEAR='0000'

for item in `cat .originalarchive.tmp | sort -r | uniq`;
  do
    DATE=$(echo "$item" | cut -c -10)
    LINK=$(echo "$item" | awk -F "_" '{print $2}')
    TITLE=$(head -n 1 ./${LINK}.md | tail -1)
    YEAR=$(echo "$DATE" | cut -c -4)
    if [ "$OLD_YEAR" != "$YEAR" ]; then
      if [ "$YEAR" != "0000" ]; then echo "<h3>$YEAR</h3>" >> $HTML; fi
      OLD_YEAR=$YEAR
    fi
    if [ "$DATE" != "0000-00-00" ]; then
      echo "<li>${DATE}&nbsp;-&nbsp<a href=\"${LINK}/\">${TITLE}</a></li>" >> $HTML
    fi
  done
echo "</ul>${FILES}" >> $HTML
