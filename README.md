## Scripting Red Hat Openshift Dev Spaces operator installation

This repository contains scripts and yaml for creating/deleting DevSpaces operator and CheCluster CR in automated way.

## Installation
Simply call `./install.sh` and this script will:
 - Create namespace `devspaces`
 - Create OperatorGroup in this namespace
 - Create DevSpaces subscription
 - Create CheCluster CR with runningLimit equal to `20` and image puller `enabled`

 ## Uninstallation
 Call `./uninstall.sh` and the script will cleanup wll the DevSpaces related resources and then delete `devspaces` namespace
The uninstall script relies on `dsc` CLI tool which is available @ https://developers.redhat.com/products/openshift-dev-spaces/download
 
