## Running Tensorflow/Keras/Pytorch on a GPU-enabled VM

| | |
| :-- | --- |
| Author(s) | JS Tan | 
| Level | Beginner |
| Azure services | DSVM, N-series VM | 
| Opensource tools | Tensorflow, Keras |
| Goal(s) | Provide a set of scripts to show how to deploy a GPU-enabled Ubuntu Azure DSVM to run a tensorflow/keras/pytorch workload |
| Requirements | Access to az cli (installed locally or accessed through shell.portal.com) |

The following steps assumes that you have access to the az cli. The end result is to have a jupyter notebook backed by your GPU-enabled VM with tensorflow, keras or pytorch installed on it. 

### 1. Create a resource group
In the Azure Cli - run the following:

```sh
az group create --location <location> --name <resource-group-name>
```
- __\<location\>__ - for all available locations, enter the following: `az account list-locations`
- __\<resource-group-name\>__ - resource group names are case insensitive, and only take the following character types: alphanumeric, underscore, parantheses, hyphen, period (except at the end)

### 2. Create your GPU-enabled DSVM
The [Azure DSVM](https://azure.microsoft.com/en-us/services/virtual-machines/data-science-virtual-machines/) is an Azure VM that comes preinstalled with a variety of tools curated for the Data Science workloads.

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

When the VM is provisioned, the output will look as follows:

```sh
{
  "fqdns": "",
  "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/<resource-group-name>/providers/Microsoft.Compute/virtualMachines/<dsvm-name>",
  "location": "<location>",
  "macAddress": "00-00-00-00-00-00",
  "powerState": "VM running",
  "privateIpAddress": "10.0.0.4",
  "publicIpAddress": "12.345.67.8",
  "resourceGroup": "<resource-group-name>",
  "zones": ""
}
```

From the output, please note the assigned `publicIpAddress`. This will be what you use to log into your DSVM. In this case, I can ssh into my VM with the following command: `ssh <username>@12.345.67.8`.


<todo...>
