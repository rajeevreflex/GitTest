#!/usr/bin/env bash

# use this from root of project and checkout to develop first to cut a release.
# Before doing this update the CHANGELOG.md file.
cutrelease() {
    echo "Creating release Branch"
    local release_branch="release"
    local release_suffix="release_"
    echo ${GIT_BRANCH}
    local branch_title
    branch_title=`echo "${GIT_BRANCH}" | rev | cut -d"/" -f1  | rev`
    echo "Release branch name = ${release_branch}/${release_suffix}${branch_title}"
    git checkout -b "${release_branch}/${release_suffix}${branch_title}"
    git push --set-upstream origin "${release_branch}/${release_suffix}${branch_title}"
    git checkout develop
    git pull --rebase
}
cutrelease
