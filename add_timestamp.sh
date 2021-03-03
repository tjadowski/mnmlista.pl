#!/bin/bash

echo "Rewrite timestamp of assets ..."

ASSETSDATE=`date +%s`
for file in `find public -type f -name '*.html'`; do
  sed -i "s/style.css/style.${ASSETSDATE}.css/g" $file;
done

mv public/assets/style.css public/assets/style.${ASSETSDATE}.css