#!/usr/bin/env bash
#
###
export GIT_COMMIT=${APP_GIT_COMMIT}
export ARTEFACT_VERSION="${BUILD_NUMBER}-${GIT_COMMIT}"
./run --package
