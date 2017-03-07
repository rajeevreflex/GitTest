# Change Log
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/)
and this project adheres to [Semantic Versioning](http://semver.org/).

Group changes to describe their impact on the project, as follows:
-  **Added** for new features.
-  **Changed** for changes in existing functionality.
-  **Deprecated** for once-stable features removed in upcoming releases.
-  **Removed** for deprecated features removed in this release.
-  **Fixed** for any bug fixes.
-  **Security** to invite users to upgrade in case of vulnerabilities.

## [Unreleased]
### Added
- Added parameters to display code branch and commit id in Jenkins pipeline header.

### Changed

### Fixed

## [v4] - 2017-03-07
### Changed
- NodeJS version specified in pipeline defintion files.
- NodeJS version installed with [NVM])https://github.com/creationix/nvm) and set to use when lint and test jobs run in app code pipeline.
- app-code-pipeline now configurable regards branches to poll in checkout-code job.

## [v3] - 2017-02-27
### Added
- provision-environment step as first stage in updating environment.
- configure-environment step as second stage in updating environment.

### Changed
- Made provision-environment the stage that requires manual start (was deploy-to-environment).
- Made deploy-to-environment the third and final stage in updating environment.
- Changed branches pipeline to include the two new jobs as main pipeline.

## [v2] - 2017-02-20

### Changed
- Updated the CHANGELOG.d to ensure versioning is in step.

## [v1] - 2017-02-17
### Added
- This CHANGELOG file to hopefully serve as an evolving example of a standardized open source project CHANGELOG.
- Refactor the pipeline variable name config_code_* to platform_code_*
- Modified checkout-platform-code.yaml to pass on parameters to build artefact and deploy jobs.
- Added two logging debug scripts.
- Updated checkout-code-branches.yaml to use '{name}-checkout-platform-code' as next job.

[Unreleased]: https://platform.devops.vodafone.com/stash/projects/VFLEAP/repos/vfleap-esim-test-jenkins-job-builder/compare/diff?targetBranch=refs%2Ftags%2FRelease-v4&sourceBranch=refs%2Fheads%2Fmaster&targetRepoId=324

[v4]: https://platform.devops.vodafone.com/stash/projects/VFLEAP/repos/vfleap-esim-test-jenkins-job-builder/compare/diff?targetBranch=refs%2Ftags%2FRelease-v3&sourceBranch=refs%2Ftags%2FRelease-v4&targetRepoId=324

[v3]: https://platform.devops.vodafone.com/stash/projects/VFLEAP/repos/vfleap-esim-test-jenkins-job-builder/compare/diff?targetBranch=refs%2Ftags%2FRelease-v2&sourceBranch=refs%2Ftags%2FRelease-v3&targetRepoId=324

[v2]: https://platform.devops.vodafone.com/stash/projects/VFLEAP/repos/vfleap-esim-test-jenkins-job-builder/compare/diff?targetBranch=refs%2Ftags%2FRelease-v1&sourceBranch=refs%2Ftags%2FRelease-v2&targetRepoId=324

[v1]: https://platform.devops.vodafone.com/stash/projects/VFLEAP/repos/vfleap-esim-test-jenkins-job-builder/compare/diff?targetBranch=refs%2Ftags%2FRelease-v1&sourceBranch=refs%2Ftags%2FRelease-v1&targetRepoId=324
