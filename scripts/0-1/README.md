## Running Tensorflow/Keras/Pytorch on a GPU-enabled VM

| | |
| :-- | --- |
| Date of Posting  | 4/30/2018 |
| Author(s) | JS Tan | 
| Azure services | DSVM, N-series VM | 
| Opensource tools | Tensorflow, Keras |
| Goal(s) | Provide a set of scripts to show how to deploy a GPU-enabled Ubuntu Azure DSVM to run a tensorflow/keras/pytorch workload |
| Requirements | Access to az cli (installed locally or accessed through shell.portal.com) |

The following steps assumes that you have access to the az cli

### 1. Create a resource group
In the Azure Cli - run the following:

```sh
az group create --location <location> --name <resource-group-name>
```
- __\<location\>__ - for all available locations, enter the following: `az account list-locations`
- __\<resource-group-name\>__ - resource group names are case insensitive, and only take the following character types: alphanumeric, underscore, parantheses, hyphen, period (except at the end)

### 2. Create your GPU-enabled DSVM
In the Azure CLi - run the following:

```sh
az vm create \
  --resource-group <resource-group-name> \
  --name <dsvm-name> \
  --image microsoft-ads:linux-data-science-vm-ubuntu:linuxdsvmubuntu:latest \
  --size Standard_NC6 \
  --admin-username <username> \
  --admin-password <password>
```
- __\<resource-group-name\>__ - resource group names are case insensitive, and only take the following character types: alphanumeric, underscore, parantheses, hyphen, period (except at the end)
- __\<dsvm-name\>__ - vm names must be 1-64 characters, are case insensitive, and only take the following character types: alphanumeric, underscore, hyphen
- __\<username\>__ - username for accessing the vm
- __\<password\>__ - password for accessing the vm, password length must be between 12 and 72
