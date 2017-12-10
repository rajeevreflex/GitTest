#!/usr/bin/env bash
source ./LEAP/test/leap_env_variables.sh
source "${HOME}/.bashrc"
base_directory=`pwd`
#echo "WORKSPACE_CLONE_GLOB : ${WORKSPACE_CLONE_GLOB[@]}"
### Find the correct directory that contains the JSON package information
FULL_GLOB=(${WORKSPACE_CLONE_GLOB[@]})
#echo "FULL_GLOB : ${FULL_GLOB[@]}"

for CODE_PATH in "${FULL_GLOB[@]}"
do
  echo "Running unit test cases for $CODE_PATH"
  cd $CODE_PATH
  nvm install "${NODEJS_VERSION}"
  nvm use "${NODEJS_VERSION}"
  npm install
  npm test
  cd $base_directory
done
