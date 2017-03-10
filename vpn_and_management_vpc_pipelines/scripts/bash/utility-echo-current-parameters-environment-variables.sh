#!/usr/bin/env bash
#
# filename: utility-echo-current-parameters-environment-variables.sh
###
echo "

#############

PIPELINE_NUMBER - The BUILD_NUMBER of first job in the pipeline.
== ${PIPELINE_NUMBER}

APP_GIT_COMMIT - The git commit of the VFLEAP repository.
== ${APP_GIT_COMMIT}

APP_GIT_BRANCH - The git branch of the VFLEAP repository.
== ${APP_GIT_BRANCH}

PLATFORM_RELEASE_COMMIT_ID - The git commit of the latest release in the vfdo-esim-platform repository.
== ${PLATFORM_RELEASE_COMMIT_ID}

PLATFORM_RELEASE_BRANCH - The git branch/tag name of the latest release in the vfdo-esim-platform repository.
== ${PLATFORM_RELEASE_BRANCH}

ARTEFACT_VERSION - The artefact version to deploy
== ${ARTEFACT_VERSION}

#############

"
