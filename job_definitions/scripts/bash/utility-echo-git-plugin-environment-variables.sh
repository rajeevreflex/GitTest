#!/usr/bin/env bash
#
# filename: utility-echo-git-plugin-environment-variables.sh
###
echo "

#############

GIT_COMMIT - SHA of the current
== ${GIT_COMMIT}

GIT_BRANCH - Name of the remote repository (defaults to origin), followed by name of the branch currently being used, e.g. \"origin/master\" or \"origin/foo\"
== ${GIT_BRANCH}

GIT_LOCAL_BRANCH - Name of the branch on Jenkins. When the \"checkout to specific local branch\" behavior is configured, the variable is published.  If the behavior is configured as null or **, the property will contain the resulting local branch name sans the remote name.
== ${GIT_LOCAL_BRANCH}

GIT_PREVIOUS_COMMIT - SHA of the previous built commit from the same branch (the current SHA on first build in branch)
== ${GIT_PREVIOUS_COMMIT}

GIT_PREVIOUS_SUCCESSFUL_COMMIT - SHA of the previous successfully built commit from the same branch.
== ${GIT_PREVIOUS_SUCCESSFUL_COMMIT}

GIT_URL - Repository remote URL
== ${GIT_URL}

GIT_URL_N - Repository remote URLs when there are more than 1 remotes, e.g. GIT_URL_1, GIT_URL_2
== ${GIT_URL_N}

GIT_AUTHOR_NAME and GIT_COMMITTER_NAME - The name entered if the \"Custom user name/e-mail address\" behaviour is enabled; falls back to the value entered in the Jenkins system config under \"Global Config user.name Value\" (if any)
== ${GIT_AUTHOR_NAME}
== ${GIT_COMMITTER_NAME}

GIT_AUTHOR_EMAIL and GIT_COMMITTER_EMAIL - The email entered if the \"Custom user name/e-mail address\" behaviour is enabled; falls back to the value entered in the Jenkins system config under \"Global Config user.email Value\" (if any)
== ${GIT_AUTHOR_EMAIL}
== ${GIT_COMMITTER_EMAIL}

#############
"
