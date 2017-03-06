#!/usr/bin/env bash
#
## Load environment variables
source ./LEAP/test/leap_env_variables.sh

### Find the correct directory that contains the JSON package information
FULL_GLOB=${WORKSPACE_CLONE_GLOB}
CODE_PATH=$(echo $FULL_GLOB|cut -d '/' -f 1)

# Now run the coverage command
cd "${CODE_PATH}" || exit 1
echo "Changing to $(pwd) and running npm test"
source "${HOME}/.bashrc"
nvm install "${NODEJS_VERSION}"
nvm use "${NODEJS_VERSION}"
npm install
npm test
