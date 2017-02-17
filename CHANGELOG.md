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

### Changed

### Fixed

## v1 - 2017-02-17
### Added
- This CHANGELOG file to hopefully serve as an evolving example of a standardized open source project CHANGELOG.
- Refactor the pipeline variable name config_code_* to platform_code_*
- Modified checkout-platform-code.yaml to pass on parameters to build artefact and deploy jobs.
- Added two logging debug scripts.
- Updated checkout-code-branches.yaml to use '{name}-checkout-platform-code' as next job.
