#!/usr/bin/env bash

# use this from root of project and checkout to develop first to cut a release.
# Before doing this update the CHANGELOG.md file.
echo "Creating release Branch"
   git checkout develop
   git pull --rebase
   echo "do release"
     git checkout -b "release/release_dev"
     git push --set-upstream origin "release/release_dev"
     git checkout develop
     git pull --rebase


# cutrelease() {
#    git checkout develop
#    git pull --rebase
#
#    #local last_tag=$(git describe --tags $(git rev-list --tags --max-count=1))
#    local last_tag=$(git for-each-ref --count=1 --format="%(refname:lstrip=-1)" --sort=-version:refname refs/tags)
#
#    echo "last tag: ${last_tag}"
#
#    echo -n "Enter release number [ENTER]: "
#    read new_release_version
#
#    echo "new  release branch: \"release/${new_release_version}\""
#
#    read -r -p "Are you sure? [y/N] " response
#    case $response in
#     [yY][eE][sS]|[yY])
#      echo "do release"
#      git checkout -b "release/${new_release_version}"
#      git push --set-upstream origin "release/${new_release_version}"
#      git checkout develop
#      git pull --rebase
#      ;;
#     *)
#      echo "aborted release branch creation"
#      ;;
#    esac
# }
#
# cutrelease
