# This script takes in 3 arguments --name (-n), --password (-p), and --location (-l)
# 
# Using these arguments, this script will generate all the required resources for running AZTK
# All output will be stored on stdout.txt in your current directory
# This script will output the information you need to run AZTK.
#   specifically, it will generate the information to copy/paste into the .aztk/secrets.yaml file

#!/bin/bash

# Parse arguments
POSITIONAL=()
while [[ $# -gt 0 ]]
do
key="$1"

case $key in
    -n|--name)
    ARG_NAME="$2"
    shift # past argument
    shift # past value
    ;;
    -p|--password)
    ARG_PASSWORD="$2"
    shift # past argument
    shift # past value
    ;;
    -l|--location)
    ARG_LOCATION="$2"
    shift # past argument
    shift # past value
    ;;
    --default)
    DEFAULT=YES
    shift # past argument
    ;;
    *)    # unknown option
    POSITIONAL+=("$1") # save it in an array for later
    shift # past argument
    ;;
esac
done
set -- "${POSITIONAL[@]}" # restore positional parameters

# assign parsed arguments to azure resources
RESOURCE_GROUP_NAME=$ARG_NAME
BATCH_ACCOUNT_NAME=$ARG_NAME
STORAGE_ACCOUNT_NAME=$ARG_NAME
SERVICE_PRINCIPAL_NAME=$ARG_NAME
LOCATION=$ARG_LOCATION
SERVICE_PRINCIPAL_PASSWORD=$ARG_PASSWORD

# create a resource group
echo "Creating your resource group, $RESOURCE_GROUP_NAME"
az group create -n $RESOURCE_GROUP_NAME -l $LOCATION >> stdout.txt

# create your storage account in the resource group
echo "Creating your storage account, $STORAGE_ACCOUNT_NAME"
az storage account create --sku Standard_LRS -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME -l $LOCATION >> stdout.txt

# create your batchai cluster in the resource group
echo "Creating your batch account, $BATCH_ACCOUNT_NAME"
# az batch account create -l westus -n $BATCH_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME >> stdout.txt
az batchai cluster create -l $LOCATION -g $RESOURCE_GROUP_NAME --storage-account-name $STORAGE_ACCOUNT_NAME -n $CLUSTER_NAME

# set resource ids for your batch account & storage account
export AZURE_STORAGE_ACCOUNT_RESOURCE_ID=`az storage account show -n $STORAGE_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME | jq '.id' | tr -d '"'`
export AZURE_BATCH_ACCOUNT_RESOURCE_ID=`az batch account show -n $BATCH_ACCOUNT_NAME -g $RESOURCE_GROUP_NAME | jq '.id' | tr -d '"'`

# create your service principal and give it contributor access to your batch and storage accounts
echo "Creating your service principal, $SERVICE_PRINCIPAL_NAME"
az ad sp create-for-rbac -n $SERVICE_PRINCIPAL_NAME --role contributor --password $SERVICE_PRINCIPAL_PASSWORD --years 2 --scopes $AZURE_BATCH_ACCOUNT_RESOURCE_ID $AZURE_STORAGE_ACCOUNT_RESOURCE_ID >> stdout.txt

# set tenant and app ids
export AZURE_SP_TENANT_ID=`az ad sp show --id http://$SERVICE_PRINCIPAL_NAME | jq '.additionalProperties.appOwnerTenantId' | tr -d '"'`
export AZURE_SP_APP_ID=`az ad sp show --id http://$SERVICE_PRINCIPAL_NAME | jq '.appId' | tr -d '"'`

# Print text to copy/paste 
echo "----------------------------------------------"
echo "Please copy and paste the following lines into your .aztk/secrets.yaml under "service_principal:""
echo "----------------------------------------------"
echo "tenant_id: $AZURE_SP_TENANT_ID"
echo "client_id: $AZURE_SP_APP_ID"
echo "credential: $SERVICE_PRINCIPAL_PASSWORD"
echo "batch_account_resource_id: $AZURE_BATCH_ACCOUNT_RESOURCE_ID"
echo "storage_account_resource_id: $AZURE_STORAGE_ACCOUNT_RESOURCE_ID"
echo "----------------------------------------------"
