#!/bin/bash

cd $1 && git pull --rebase && git checkout master && git pull --rebase && source ./env.conf && export MARKDOWN="pandoc -t html" && export CONVERTER=pandoc && ./make.sh && ./add_timestamp.sh && ./rewrite_url.sh && source ./secret.conf && ./upload.sh && cd -
