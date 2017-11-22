#!/usr/bin/env bash

# use this from root of project and checkout to develop first to cut a release.
# Before doing this update the CHANGELOG.md file.
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


# Backup Data

#!/usr/bin/env bash

# use this from root of project and checkout to develop first to cut a release.
# Before doing this update the CHANGELOG.md file.

# tag_and_merge_release() {
#   # git checkout develop
#   # git pull --rebase
#
#   local last_release
#   last_release=$(git for-each-ref --count=1 --format="%(refname:lstrip=-2)" --sort=-version:refname refs/remotes/origin/release)
#   local last_release_full
#   last_release_full=$(git for-each-ref --count=1 --sort=-version:refname refs/remotes/origin/release)
#
#
#   local last_tag
#   last_tag=$(git for-each-ref --count=1 --format="%(refname:lstrip=-1)" --sort=-version:refname refs/tags)
#
#   echo "======"
#   echo "     last release   : ${last_release}"
#   echo "last release full   : ${last_release_full}"
#   echo "         last tag   : ${last_tag}"
#
#   echo -n "Enter release TAG number [ENTER]: "
#   read new_release_tag
#
#   echo "new release tag: \"Release-${new_release_tag}\""
#
#   read -r -p "Are you sure? [y/N] " response
#   case $response in
#     [yY][eE][sS]|[yY])
#       echo "do release"
#
#       ## We checkout the release branch all changes should have been pushed or
#       ## merged from develop.
#       ## Now we want to merge release into master and tag.
#       #
#       ## Now we want to merge master into develop.
#
#       ### So currently we have the issue that we can't commit / merge on any of those
#       ### branches.
#       ### We require a pull request.
#       ### We need to establish either we remove this restriction and permit only
#       ### certain individuals (functional user Jenkins) to write to these branches.
#       ### We need to set up the groups.
#
#       #git checkout "${last_release}"
#       ## So if any changes are made to the release branch we want to
#       # git push
#       #
#       # git checkout -b "release/${new_release_tag}"
#       # git push --set-upstream origin "release/${new_release_tag}"
#       # git checkout develop
#       # git pull --rebase
#       ;;
#     *)
#       echo "aborted release branch creation"
#       ;;
#   esac
# }
#
# tag_and_merge_release
