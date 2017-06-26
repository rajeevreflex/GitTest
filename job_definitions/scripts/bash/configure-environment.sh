#!/usr/bin/env bash
#
###

## INFO: EAP-6423 This conditional is a temporary measure put in place
## due to "uata" as "ciuata" used for DE testing needs to be preserved.
## Here we keep "ciuata" place in the pipeline but take no action, so that
## pipeline view and job history is kept intact.
if [[ "${ENVIRONMENT}" != "ciuata" || "${ENVIRONMENT}" != "cipreprod" ]]; then
  ./run --ansible --playbook "${PLAYBOOK}" --environment "${ENVIRONMENT}" -y
fi
