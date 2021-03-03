#!/bin/bash

echo "Build archive index ..." 

mkdir -p "public/archiwum"

HTML="public/archiwum/index.html"
FILES="<p><strong>Wszytko w jednym pliku: <a href=\"/mnmlista.epub\">EPUB</a>&nbsp;<a href=\"/mnmlista.html\">HTML</a></strong>&nbsp;<form id=\"lf-search\" action=\"https://duckduckgo.com/\"><input type=\"hidden\" name=\"kf\" value=\"-1\"><input type=\"hidden\" name=\"kaf\" value=\"1\"><input type=\"hidden\" name=\"k1\" value=\"-1\"><input type=\"hidden\" name=\"sites\" value=\"mnmlista.pl\"><input type=\"text\" name=\"q\" value=\"\" autocomplete=\"off\" aria-label=\"Search\"></form></p>"

echo "$HEAD<title>&raquo; mnmlista</title></head><body><h1>mnmlista: spis postów</h1>
${FILES}<ul>" > $HTML

OLD_YEAR='0000'

for item in `cat .archive.tmp | sort -r | uniq`;
  do
    DATE=$(echo "$item" | cut -c -10)
    LINK=$(echo "$item" | awk -F "_" '{print $2}')
    TITLE=$(head -n 1 ./source/${LINK}.md | tail -1)
    YEAR=$(echo "$DATE" | cut -c -4)
    if [ "$OLD_YEAR" != "$YEAR" ]; then
      if [ "$YEAR" != "0000" ]; then echo "<h3>$YEAR</h3>" >> $HTML; fi
      OLD_YEAR=$YEAR
    fi
    if [ "$DATE" != "0000-00-00" ]; then
      echo "<li>${DATE}&nbsp;-&nbsp<a href=\"/${LINK}/\">${TITLE}</a></li>" >> $HTML
    fi
  done
echo "</ul>${FILES}" >> $HTML
echo "$FOOTER" >> $HTML
sed -i "s/TRACKID/archiwum/g" $HTML
