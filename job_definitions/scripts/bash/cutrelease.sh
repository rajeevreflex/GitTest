#!/usr/bin/env bash

# use this from root of project and checkout to develop first to cut a release.
# Before doing this update the CHANGELOG.md file.
cutrelease() {
   echo "Creating release Branch"
  #  git checkout develop
  #  git pull --rebase
  #  echo "do release"
  #  local last_release
  #  #last_release=$(git for-each-ref --count=1 --format="%(refname:short)" --sort=-committerdate refs/remotes/origin/release)
  #  last_release=$(git branch -a | grep remotes/origin/release*| tail -1)
  #  echo "======================================="
  #  echo "last release: ${last_release}"
  #  echo ${release_type}
   #
  #  release_type=${release_type}                     ## This value will be fetch from previous build
   #
  #  local release_branch="release"
  #  local release_suffix="release_"
   #
  #  local release_root="remotes/origin/${release_branch}/${release_suffix}"
   #
  #  local discard_release_root=$(echo "${release_root}" | wc -c)
   #
  #  release_version=`echo ${last_release} | cut -b "${discard_release_root}"-`
  #  release_number=( ${release_version//./ } )                   # replace points, split into array
   #
  #  case $release_type in
  #  	Major)
  #  	((release_number[0]++))
  #  	((release_number[1]=0))
  #  	((release_number[2]=0))
  #  		;;
  #  	Minor)
  #  	((release_number[1]++))
  #   ((release_number[2]=0))
  #  		;;
  #  	Patch)
  #  	((release_number[2]++))
  #  		;;
  #  	*)
  #  		echo "Sorry, I don't understand"
  #  		;;
  #    esac
  #    release_version="${release_suffix}${release_number[0]}.${release_number[1]}.${release_number[2]}"       # compose new version
  #    echo ${release_version}
    echo ${app_code_repository_branches}
    #  git checkout -b "${release_branch}/${release_version}"
    #  git push --set-upstream origin "${release_branch}/${release_version}"
    #  git checkout develop
    #  git pull --rebase
}
 cutrelease
