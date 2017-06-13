#!/usr/bin/env bash
#
###

## INFO: EAP-6423 This conditional is a temporary measure put in place
## due to "uata" as "ciuata" used for DE testing needs to be preserved.
## Here we keep "ciuata" place in the pipeline but take no action, so that
## pipeline view and job history is kept intact.
if [[ "${ENVIRONMENT}" != "ciuata" ]]; then
  ./run --apply --environment "${ENVIRONMENT}" -y
  if [[ ${?} -eq 1 ]]; then
    echo -e "ERROR: Environment ${ENVIRONMENT} failed" >&2 && \
    exit 1
  fi


  ## This is a tactical workaround:
  ## Problem: When Terraform is run a second time it break the routing tables.
  ## and repairs it on the next run.
  ## So we shall run Terraform twice until we have identified a fix for this
  ## Terraform bug.
  echo "Sleeping 5 mins before provisioning to work around."
  sleep 300
  ./run --apply --environment "${ENVIRONMENT}" -y
  if [[ ${?} -eq 1 ]]; then
    echo -e "ERROR: Environment ${ENVIRONMENT} failed" >&2 && \
    exit 1
  fi

  echo "Sleeping 5 mins before continuing to work around."
  sleep 300
fi
