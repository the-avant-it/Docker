#!/bin/bash

echo "Script version: 1.0.0:0"

if git tag | grep $1 > /dev/null; then
    echo "Tag $1 already exist =("
else
    git tag $1
    git push origin $1
    echo "Tag $1 has been pushed!"
fi