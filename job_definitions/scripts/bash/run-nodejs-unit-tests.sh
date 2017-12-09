#!/usr/bin/env bash
#
## Load environment variables
source ./LEAP/test/leap_env_variables.sh

### Find the correct directory that contains the JSON package information
FULL_GLOB=( ${WORKSPACE_CLONE_GLOB} )
echo ${FULL_GLOB}
for i in "${FULL_GLOB[@]}"
do
  echo "Running Unit test for $i"
  pushd $i
  source "${HOME}/.bashrc"
  nvm install "${NODEJS_VERSION}"
  nvm use "${NODEJS_VERSION}"
  npm install
  npm test
  popd -1
done

# array=( "LEAP" "LEAP_LOGGER" "LEAP_NOTIFICATION" "AWS/Lambda/CustomAuthorizer" "AWS/Lambda/FileUpload" "AWS/Lambda/LEAP_LOG_EXPORTER" )
# for i in "${FULL_GLOB[@]}"
# do
#   echo "Running Unit test for $i"
#   pushd $i
#   source "${HOME}/.bashrc"
#   nvm install "${NODEJS_VERSION}"
#   nvm use "${NODEJS_VERSION}"
#   npm install
#   npm test
#   popd -1
# done
