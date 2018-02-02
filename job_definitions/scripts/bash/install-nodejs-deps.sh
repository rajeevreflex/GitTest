#!/usr/bin/env bash
#
### Find the correct directory that contains the JSON package information
FULL_GLOB=${WORKSPACE_CLONE_GLOB_LINT}
CODE_PATH=$(echo $FULL_GLOB|cut -d '/' -f 1)
# Now change to that directory
cd $CODE_PATH

# and install the packages

### NODE JS can't read the SSL cert on the proxy
export PHANTOMJS_CDNURL=http://cnpmjs.org/downloads
#npm config set registry='http://registry.npmjs.org/'
source "${HOME}/.bashrc"
nvm install "${NODEJS_VERSION}"
nvm use "${NODEJS_VERSION}"
npm install
npm install grunt
