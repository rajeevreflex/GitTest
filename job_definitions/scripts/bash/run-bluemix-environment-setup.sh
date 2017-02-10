#!/bin/bash
#
# Change to the correct workspace directory and launch the bluemix environment
#
# (c) DevOpsGuys/Vodafone 2016
# Author: Matthew Macdonald-Wallace <matthew.macdonald-wallace@devopsguys.com>

set -x

### Find the correct directory against which to execute the lint
FULL_GLOB=${WORKSPACE_CLONE_GLOB}
CODE_PATH=$(echo $FULL_GLOB|cut -d '/' -f 1)
JS_APP_FILE=${JS_APP_FILE}

cd ${CODE_PATH}

### and use the environment launcher script
bash scripts/launch_ci_environment.sh
