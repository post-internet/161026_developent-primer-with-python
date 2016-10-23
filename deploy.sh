#!/bin/bash

gitbook build
cd ./_book
git init
git remote add origin "$(cd ../ && git remote get-url origin)"
git checkout -b gh-pages
git fetch origin gh-pages
git reset --soft FETCH_HEAD
git add .
git commit -m "$(cd ../ && git log --pretty=%s -n 1)"

echo "Commited. Please push manually."
