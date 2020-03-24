#!/bin/bash
# Setup the git environment for an automated GitHub Actions build
#
# @author Connor Henley, @thatging3rkid
branch=$1

git fetch --depth=1 origin +refs/tags/*:refs/tags/* # fetch all tags
git fetch --no-tags --prune --depth=1 origin +refs/heads/*:refs/remotes/origin/* # fetch all branches
git fetch --prune --unshallow # fetch history for tags and branches

# check to see if we're in a detached HEAD state, if so then escape it
if ! git symbolic-ref --short HEAD; then
    git switch -
fi

git checkout ${branch} # checkout the code that we're currently working on
