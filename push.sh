#!/bin/sh

# remember the last dot (.)
jar -cvf webapps/ROOT.war -C src/ROOT .

git add -A .
git commit -m "push"
git push
