#!/bin/bash

echo "==========================="

git config --global User.name "${GITHUB_ACTOR}"
git config --global user.email "${INPUT_EMAIl}"
git config --global --add safe.directory /github/workspace

python3 /usr/bin/feed.py 

git add -A && git commit -m "UPDATE_FEED"
git push --set-upstream origin main

echo "==========================="