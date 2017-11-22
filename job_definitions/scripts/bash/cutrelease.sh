#!/usr/bin/env bash

# use this from root of project and checkout to develop first to cut a release.
# Before doing this update the CHANGELOG.md file.
cutrelease() {
   echo "Creating release Branch"
   git checkout develop
   git pull --rebase
   echo "do release"
   local last_release
   last_release=$(git for-each-ref --count=1 --format="%(refname:lstrip=-2)" --sort=-version:refname refs/remotes/origin/release)
   local last_release_full
   last_release_full=$(git for-each-ref --count=1 --sort=-version:refname refs/remotes/origin/release)


   local last_tag
   last_tag=$(git for-each-ref --count=1 --format="%(refname:lstrip=-1)" --sort=-version:refname refs/tags)

   echo "======"
   echo "     last release   : ${last_release}"
   echo "last release full   : ${last_release_full}"
   echo "         last tag   : ${last_tag}"
  #   git checkout -b "release/release_dev"  # This is hardcoded value for testing
  #   git push --set-upstream origin "release/release_dev" # This is hardcoded value for testing
  #   git checkout develop
  #   git pull --rebase
}
 cutrelease
