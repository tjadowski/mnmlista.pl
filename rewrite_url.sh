#!/bin/bash

echo "Rewrite all url to origin host ..."

for file in `find public -type f -name '*.html'`; do
  sed -i 's/href="\//href="https:\/\/mnmlista.pl\//g' $file;
done
