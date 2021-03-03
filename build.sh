#!/bin/bash

for file in `ls source/*.md`;
  do
          TITLE=`head -n 1 $file| tail -1`
          DATE=`head -n 2 $file| tail -1`
          LINK=`head -n 3 $file| tail -1`
          FILE=`echo "$file" | cut -c 8- | cut -d . -f -1`
          echo "Processing source/${FILE}.md ..."
          mkdir -p public/$FILE
          HTML="public/${FILE}/index.html"
          echo "$HEAD<title>&raquo; $TITLE :mnmlista</title>
          <meta name=\"referrer\" content=\"no-referrer\">
          </head><body>
          <h1><a href=\"/archiwum/\">mnmlista:</a> $TITLE</h1>" > $HTML
          if [ "$DATE" != "0000-00-00" ]; then
            echo "<p><a href=\"${ORIGINAL}${LINK}\">original post by <i>Leo Babauta</i></a></p>" >> $HTML
          fi
          cat $file | tail -n +5 | $MARKDOWN >> $HTML
          LINKS=`cat .archive.tmp | sort -r | uniq | grep -v 0000-00-00 | grep ${DATE}_${FILE} -C 1 | cut -c 14-`
          n=0;
          echo "<p>" >> $HTML
          for link in $LINKS;
            do
              if [ "$link" != "$FILE" ]; then
                if [ $n == 0 ]; then
                  echo "<strong><a style=\"text-decoration: none\" href=\"/${link}\">&lt;&lt;&lt;</a></strong>&nbsp;" >> $HTML
                else
                  echo "&nbsp;<strong style=\"float: right\"><a style=\"text-decoration: none\" href=\"/${link}\">&gt;&gt;&gt;</a></strong>" >> $HTML
                fi
              fi
              n=2
          done
          echo "</p>" >> $HTML
          echo "${FOOTER}" >> $HTML
          echo "</body></html>" >> $HTML
          echo "${DATE}_${ORIGINAL}${LINK}" >> .originalarchive.tmp
  done

for file in `ls original/*.md`;
  do
          TITLE=`head -n 1 $file| tail -1`
          FILE=`echo "$file" | cut -c 10- | cut -d . -f -1`
          echo "Processing original/${FILE}.md ..."
          mkdir -p public/original/$FILE
          HTML="public/original/${FILE}/index.html"
          echo "$HEAD<title>&raquo; $TITLE :mnmlist</title>
          <meta name=\"robots\" content=\"noindex\">
          <meta name=\"referrer\" content=\"no-referrer\">
          </head><body>
          <h1><a href=\"/original/\">mnmlist:</a> $TITLE</h1>" > $HTML
          echo "<p><a href=\"https://leobabauta.com\"><i>by Leo Babauta</i></a></p>" >> $HTML
          cat $file | tail -n +3 | $MARKDOWN >> $HTML
  done
