#!/bin/bash
#
# Run the Terraform Plan
#
# (c) DevOpsGuys/Vodafone 2016
# Author: Jonathan Wright <jonathan.wright@devopsguys.com>

[[ -e "${HOME}/.tf_vars_esim" ]] && \
  source "${HOME}/.tf_vars_esim"
# Export these variables so they can be provided to the run script
export TF_VAR_aws_region TF_VAR_access_key TF_VAR_secret_key TF_VAR_deploy_key

TFSTATE_DIR="${HOME}/.esim-tfstate"

[[ ! -d "${TFSTATE_DIR}" ]] &&
  mkdir "${TFSTATE_DIR}"

# Report what Environment/Market we are running this far, and who is the owner
echo
echo "Running Terraform Plan (Build) for:"
echo "    Environment: ${TF_VAR_environment}"
echo "    Owner: ${TF_VAR_owner}"
echo
echo "  using AWS Access Key ${TF_VAR_access_key}"
echo "    and ${TF_VAR_deploy_key} deployment key"
echo

for EXT in tfstate tfbackup; do
  # If a state file exists for the current environment, then import that
  if [[ -e "${TFSTATE_DIR}/${TF_VAR_environment}.${EXT}" ]]; then
    cp -f "${TFSTATE_DIR}/${TF_VAR_environment}.${EXT}" "terraform/terraform.${EXT}" && \
      echo "Restored ${TFSTATE_DIR}/${TF_VAR_environment}.${EXT} to terraform/terraform.${EXT}"
  # Otherwise delete the file if it exists under the terraform/ directory to
  # ensure that we only create the environment from scratch and don't cross
  # contaminate settings between environments.
  else
    # Abort if we don't have a master tfstate file
    if [[ "${EXT}" == "tfstate" ]]; then
      echo "FATAL: No terraform/terraform.${EXT} file exists for this environment. Aborting."
      exit 1
    fi
  fi
done

# Go!
./run --destroy --jenkins
TFSTATE_EXIT=${?}

for EXT in tfstate tfbackup; do
  # If a state file now exists for the current environment, save it
  if [[ -e "terraform/terraform.${EXT}" ]]; then
    cp -f "terraform/terraform.${EXT}" "${TFSTATE_DIR}/${TF_VAR_environment}.${EXT}" && \
      echo "Backed up terraform/terraform.${EXT} to ${TFSTATE_DIR}/${TF_VAR_environment}.${EXT}"
  fi
done

# Make sure we return the exit code for the runs
exit ${TFSTATE_EXIT}
