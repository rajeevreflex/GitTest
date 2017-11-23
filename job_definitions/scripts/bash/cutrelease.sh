#!/usr/bin/env bash

# use this from root of project and checkout to develop first to cut a release.
# Before doing this update the CHANGELOG.md file.
cutrelease() {
   echo "Creating release Branch"
   git checkout develop
   git pull --rebase
   echo "do release"
   local last_release
   last_release=$(git for-each-ref --count=1 --format="%(refname:short)" --sort=-committerdate refs/remotes/origin/release)
   echo "======================================="
   echo "last release: ${last_release}"
   echo ${release_type}

   release_type=${release_type}                     ## This value will be fetch from previous build

   version=`echo ${last_release} | cut -b 23-`
   a=( ${version//./ } )                   # replace points, split into array
   #((a[2]++))                              # increment revision (or other part)
   case $release_type in
   	Major)
   	((a[0]++))
   	((a[1]=0))
   	((a[2]=0))
   		;;
   	Minor)
   	((a[1]++))
   		;;
   	Patch)
   	((a[2]++))
   		;;
   	*)
   		echo "Sorry, I don't understand"
   		;;
     esac
     version="release${a[0]}.${a[1]}.${a[2]}"       # compose new version
     echo ${version}

  #   git checkout -b "release/release_dev"  # This is hardcoded value for testing
  #   git push --set-upstream origin "release/release_dev" # This is hardcoded value for testing
  #   git checkout develop
  #   git pull --rebase
}
 cutrelease
