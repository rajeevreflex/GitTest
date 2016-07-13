#!/bin/bash
#
# Install dependencies and run the terraform validator tests
#
# (c) DevOpsGuys/Vodafone 2016
# Author: Edmund Dipple <edmund.dipple@devopsguys.com>
# Contributers: Jonathan Wright <jonathan.wright@devopsguys.com>

cd test/
./requirement.sh
./validate.sh
