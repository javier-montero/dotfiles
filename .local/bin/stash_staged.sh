#!/bin/bash
git stash push --quiet --keep-index -m \"temp for stash-index\" &&
git stash push \"$@\" &&
git stash pop --quiet stash@{1} &&
git stash show -p | git apply -R;
