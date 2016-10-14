#!/usr/bin/env bash
#
# Run the Terraform Plan
#
# (c) DevOpsGuys/Vodafone 2016
# Author: Jonathan Wright <jonathan.wright@devopsguys.com>


# Go!
./run --run --jenkins --environment "${ENVIRONMENT}"
TFSTATE_EXIT=${?}

# Make sure we return the exit code for the runs
exit ${TFSTATE_EXIT}
