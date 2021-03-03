#!/bin/bash

DATA='.mnmlista.md'
OUTPUT='public/mnmlista'

echo "Convert MD into Standalone HTML ..." 
${CONVERTER} -s -S -c "/assets/style.css" ${DATA} -o ${OUTPUT}.save

echo "Make mobile version"
echo '<!doctype html><html lang="pl" xml:lang="pl" xmlns="http://www.w3.org/1999/xhtml"><head><link rel="stylesheet" href="/assets/style.css" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"><meta http-equiv="content-Type" content="text/html; charset=UTF-8" /><title>&raquo;mnmlista: wszystkie wpisy</title></head><body><h1>&raquo;mnmlista: wszystkie wpisy</h1>' > ${OUTPUT}.html
tail -n +12 ${OUTPUT}.save >> ${OUTPUT}.html
rm ${OUTPUT}.save

echo "Convert MD into EPUB ..." 
${CONVERTER} -s ${DATA} -o ${OUTPUT}.epub

DATA='.mnmlist.md'
OUTPUT='public/mnmlist'

echo "Convert MD into Standalone HTML ..." 
${CONVERTER} -s -S -c "/assets/style.css" ${DATA} -o ${OUTPUT}.save

echo "Make mobile version"
echo '<!doctype html><html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml"><head><link rel="stylesheet" href="/assets/style.css" /><meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"><meta http-equiv="content-Type" content="text/html; charset=UTF-8" /><title>&raquo;mnmlist: all posts</title></head><body><h1>&raquo;mnmlist: all posts</h1>' > ${OUTPUT}.html
tail -n +12 ${OUTPUT}.save >> ${OUTPUT}.html
rm ${OUTPUT}.save

echo "Convert MD into EPUB ..." 
${CONVERTER} -s ${DATA} -o ${OUTPUT}.epub

