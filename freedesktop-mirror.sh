#!/usr/bin/bash

source repos.sh

cd "$(dirname "$0")/..";

for repo in "${repos[@]}" ; do
  # replace / with __ in repository name
  hubrepo="${repo//\//__}"
  hubrepo="${hubrepo//\+//-plus}"
  git clone --mirror git://anongit.freedesktop.org/"$repo" "$hubrepo" &&
  (
    cd "$hubrepo"
    hub create -d "(mirror)" -h "http://cgit.freedesktop.org/$repo" "freedesktop-unofficial-mirror/$hubrepo" &&
    git push --mirror "git@github.com:freedesktop-unofficial-mirror/$hubrepo"
  )
done
