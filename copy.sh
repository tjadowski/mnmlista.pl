#!/bin/bash

echo "Copying to public ..."

cp .htaccess public
cp robots.txt public
cp source/README.txt assets
zip assets/source-mnmlista.pl.zip -r source/*.md
cp -ap assets public
