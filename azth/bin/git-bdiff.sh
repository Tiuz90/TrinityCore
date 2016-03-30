#!/bin/bash

BASE_BRANCH="tc-latest"

if [ -z "$1" ]
then
    read -p "Write branch with whom compare your current branch ( leave blank to use default tc-latest ): " branch
    BASE_BRANCH=${branch:-$BASE_BRANCH} # branch or default
else
    BASE_BRANCH=$1
fi

git config diff.tool meld

git difftool -d $BASE_BRANCH
