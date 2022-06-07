#! /bin/sh
#
# Automatically call rebase of current branch
#
BRANCH_NAME=$(git branch | grep '*' | sed 's/* //')
git rebase -i --root $BRANCH_NAME
