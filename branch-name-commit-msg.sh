#! /bin/sh
#
# Automatically adds branch name to every commit message.
#
BRANCH_NAME="["$(git branch | grep '*' | sed 's/* //')"]"
git commit -m "$BRANCH_NAME $1"
