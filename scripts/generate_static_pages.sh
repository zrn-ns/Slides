#!/bin/bash

cd `dirname $0`

cd ..

if !(type "reveal-md" > /dev/null 2>&1); then
    echo "[Error] reveal-md is not installed!"
    echo "Please install with below command:"
    echo "$ npm install -g reveal-md"
    echo ""
    exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
    echo "[Error] diff exists. Please commit or stash before execution."
    exit 1
fi

reveal-md content/ --static docs --static-dirs=content/attachments
git add .
git commit -m "ADD Generated static pages: `date '+%Y/%m/%d %H:%M:%S'`"

cd scripts
