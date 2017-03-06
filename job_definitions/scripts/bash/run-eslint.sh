#!/usr/bin/env bash
#
# Change to the correct workspace directory and execute JSHint to verify the code
#
# (c) DevOpsGuys/Vodafone 2016
# Author: Matthew Macdonald-Wallace <matthew.macdonald-wallace@devopsguys.com>

### Find the correct directory against which to execute the lint
FULL_GLOB=${WORKSPACE_CLONE_GLOB}
CODE_PATH=$(echo $FULL_GLOB|cut -d '/' -f 1)
JS_APP_FILE="${JS_APP_FILE}"

cd "${CODE_PATH}" || exit 1

echo "Running Node version: ${NODEJS_VERSION}"
node --version

### and run ESLint
### || : appended to return successfully to force jenkins to continue.
#npm run lint || :
npm run lint
