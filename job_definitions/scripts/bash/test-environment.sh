#!/usr/bin/env bash
#
###
echo "Place holder code for test-application-code.sh"
./run --test --environment "${ENVIRONMENT}" --test --testcase leap_logger

./run --test --environment "${ENVIRONMENT}" --test --testcase custom_authorizer

./run --test --environment "${ENVIRONMENT}" --test --testcase file_upload
