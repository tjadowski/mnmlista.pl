#!/bin/bash

echo "Update to mnmlista.pl ..."

echo "Correct files and dictionaries permissions"
find public -type d -exec chmod 755 {} \;
find public -type f -exec chmod 644 {} \;

cd public
${FTP}  -e 'cd mnmlista.pl; mirror -vvv -e -R -n .;exit' -u ${FTP_USER},${FTP_SECRET} ${FTP_HOST}
