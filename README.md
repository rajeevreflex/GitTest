# ESIM Test Jenkins Job builder
This repository contains the Test Jenkins Job Builder tasks for the Vodafone LEAP project.
The purpose of the repository is to test changes to pipeline code and platform (infrastructure) code in isolation.

## What is Jenkins Job Builder?

Jenkins Job Builder (JJB) is a project developed by the OpenStack Community to allow for the storage and tracking of changes to Jenkins Job configurations via standard Source Code Management tooling such as GIT.

JJB allows the developer or operations teams to define Jenkins Jobs using YAML and then converts the YAML to XML to allow the jobs to be configured on the server via the XML API.

Full documentation on how to use JJB can be found at http://docs.openstack.org/infra/jenkins-job-builder/

## How do I install Jenkins Job Builder?

Installation is simple, (suggest using `virtualenv` to isolate the JJB from your system http://docs.python-guide.org/en/latest/dev/virtualenvs/ ) just run the following command within a virtual environment:
*

```
  cd my_project_folder
  virtualenv venv
  source venv/bin/activate
  pip install jenkins-job-builder
```

On macOS, it's recommended that you use the flag "-p /usr/bin/python2.7" when creating the virtualenv. This is to ensure that the System Keychain is used when checking the SSL certificate of the Jenkins server. Using the Homebrew version of Python may result in SSL certificate validation errors.

## Are there any third-party plugins that need to be installed?

Yes, install the following via `pip`

- jenkins-jobs-slack

## Where should I store my jobs?

We believe firmly in DRY (Don't Repeat Yourself) coding practices, therefore any scripts that will be used across multiple jobs should be placed into the "scripts" directory and any YAML snippets that will be reused across multiple jobs should be in the "snippets" directory.

## How do I make sure my jobs are processed?

Copy the sample config file `jenkins_jobs.sample.ini` in this repository to `jenkins_jobs.ini` (NB: This file is ignored by default, so your changes will not be saved up to the master repository).

Update the file you have just created with your API username and password and then follow the instructions below to make your changes.

Your user name on Jenkins at this URL `https://platform.devops.vodafone.com/jenkins/user/jenkins/configure`
Then copy user id and api token into place.

```
# Run this command to verify the changes are correct (you will see the XML printed to your screen)
jenkins-jobs --conf jenkins_jobs.ini -l debug test job_definitions/

# Run this command to upload the changes to the server:
jenkins-jobs --conf jenkins_jobs.ini update job_definitions/
```

A successful run looks like this:

```
15:25 $ workon jjb
(jjb) ✔ ~/Customers/VODA/vfdo-esim-jenkins-job-builder [master|✚ 1…3]
15:25 $ jenkins-jobs --conf jenkins_jobs.ini update job_definitions/
INFO:root:Updating jobs in ['/home/mmw/Customers/VODA/vfdo-esim-jenkins-job-builder/job_definitions', '/home/mmw/Customers/VODA/vfdo-esim-jenkins-job-builder/job_definitions/snippets', '/home/mmw/Customers/VODA/vfdo-esim-jenkins-job-builder/job_definitions/scripts', '/home/mmw/Customers/VODA/vfdo-esim-jenkins-job-builder/job_definitions/scripts/ruby', '/home/mmw/Customers/VODA/vfdo-esim-jenkins-job-builder/job_definitions/scripts/python', '/home/mmw/Customers/VODA/vfdo-esim-jenkins-job-builder/job_definitions/scripts/bash', '/home/mmw/Customers/VODA/vfdo-esim-jenkins-job-builder/job_definitions/scripts/perl'] ([])
/home/mmw/.virtualenvs/jjb/local/lib/python2.7/site-packages/jenkins/__init__.py:530: DeprecationWarning: get_plugins_info() is deprecated, use get_plugins()
  DeprecationWarning)
INFO:jenkins_jobs.builder:Number of jobs generated:  1
INFO:jenkins_jobs.builder:Creating jenkins job esim-checkout-code
INFO:root:Number of jobs updated: 1
INFO:jenkins_jobs.builder:Cache saved
```
