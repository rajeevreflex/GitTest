#!/usr/bin/env bash
#
###
echo "Place holder code for test-environment.sh"
#./run --test --environment "${ENVIRONMENT}" -y
#./run -e --test --environment "${ENVIRONMENT}" mocha -y
./run --environment "${ENVIRONMENT}" --test --testcase mocha
