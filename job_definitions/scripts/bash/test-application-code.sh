#!/usr/bin/env bash
#
###
echo "Place holder code for test-environment.sh"
set appApiUrl=https://${ENVIRONMENT}api.dev.vf-leap.com
set notificationApiUrl=https://${ENVIRONMENT}notifapi.dev.vf-leap.com
set simAdmin=Carter
set retailAgent=Albert
set password=leapuser123
FULL_GLOB=${WORKSPACE_CLONE_GLOB}
CODE_PATH=$(echo $FULL_GLOB|cut -d '/' -f 1)
JS_APP_FILE="${JS_APP_FILE}"

cd "${CODE_PATH}" || exit 1

echo "Running Node version: ${NODEJS_VERSION}"
node --version
npm run cleanSlateSanity -- --target=Stub
#./run --test --environment "${ENVIRONMENT}" -y
