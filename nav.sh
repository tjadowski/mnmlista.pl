#!/bin/bash

echo "Build from source/*.md"

for file in `ls source/*.md`;
  do
          DATE=`head -n 2 $file| tail -1`
          FILE=`echo "$file" | cut -c 8- | cut -d . -f -1`
          echo "${DATE}_${FILE}" >> .archive.tmp
  done
