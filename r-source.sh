#!/bin/sh
DirCode=$HOME/github

cd $DirCode/r-source
git fetch
git diff --name-only origin/trunk > /tmp/tmp.txt
R --vanilla  < $DirCode/monitorR/r-source.R
git pull
