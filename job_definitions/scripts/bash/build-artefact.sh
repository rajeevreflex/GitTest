#!/usr/bin/env bash
#
###
export APP_GIT_COMMIT="${APP_GIT_COMMIT}"
export APP_GIT_BRANCH="${APP_GIT_BRANCH}"
export ESIM_PLATFORM_GIT_COMMIT="${GIT_COMMIT}"
export PIPELINE_NUMBER="${PIPELINE_NUMBER}"

./run --package
