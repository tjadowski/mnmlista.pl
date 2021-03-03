#!/bin/bash

echo "Clean up ..."

cat .gitignore | grep -v secret.conf |  xargs -L 1 rm -rf
