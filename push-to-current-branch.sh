#! /bin/bash
#
# Automatically push to current branch
#
BRANCH_NAME=$(git branch | grep '*' | sed 's/* //')
if [ "$1" == "f" ]; then
  git push -u origin $BRANCH_NAME --force
else
  git push -u origin $BRANCH_NAME
fi
