#!/usr/bin/bash

source repos.sh

cd "$(dirname "$0")/..";

for repo in "${repos[@]}" ; do
  # replace / with __ in repository name
  hubrepo="${repo//\//__}"
  hubrepo="${hubrepo//\+/-plus}"
  (
    cd "$hubrepo" &&
    git fetch --prune &&
    git push --prune "git@github.com:freedesktop-unofficial-mirror/$hubrepo" +refs/remotes/origin/*:refs/heads/* +refs/tags/*:refs/tags/* ||
      echo "creating new repository"
      hub create -d "(mirror)" -h "http://cgit.freedesktop.org/$repo" "freedesktop-unofficial-mirror/$hubrepo" &&
      git push --mirror "git@github.com:freedesktop-unofficial-mirror/$hubrepo"
  )
done
