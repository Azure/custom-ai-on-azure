# Scripts 

The following scripts are designed to highlight canonical scenarios when running AI workloads on Azure's IaaS++ stack. This section is focused on deploying and configuring Azure infrastructure as opposed to demonstrating complex applications of machine learning and AI. 

Not all scripts/notebooks below use data. However, the scripts that do use data will use the canonical housing prices dataset located in a public Azure Blob: https://ai-on-iaas-pp.blob.core.windows.net/sample-data

The below sections are organized by common scenarios around experimentation and operationalization. 

## Experimentation + Model Development

__[[0-1] Running Tensorflow/Keras/Pytorch on a GPU-enabled VM](./0-1.md)__

Use your favorite deep-learning framework on an GPU-enabled VM and start experimenting and developing your model. These scripts will help you deploy and configure your VM, and show you how to run a simple model using Keras.

__Azure Technologies__: Azure DSVM

__[[0-2] Using a multi-node Spark cluster to train your SparkML model at scale](./0-2.md)__

Often times, a single node doesn't have enough memory to train your model. These scripts show you how to easily deploy a multi-node Spark cluster using AZTK, and how to work interactively with that cluster.

__Azure Technologies__: AZTK

__[[0-3] Another common scenario for model development](./0-3.md)__

Another sentence or two that will outline the scenario and what these set of scripts will go over. This is the second sentence of the description to give you a sense of how long descriptions should be.

__Azure Technologies__: Some tech, some other tech

## Operationalization + Model Deployment

__[[1-1] Using Azure Functions to provision a DSVM for periodic batch scoring](./1-1.md)__

Take advantage of Azure Functions to create a serverless process for doing periodic batch scoring. These scripts will provision a DSVM every 10 hours to score new data that comes in from Blob Storage.

__[[1-2] Deploy a web service (Flask) to do real-time request/response scoring on a DSVM](./1-2.md)__

Another sentence or two that will outline the scenario and what these set of scripts will go over. This is the second sentence of the description to give you a sense of how long descriptions should be.

__[[1-3] Run your Spark model across a cluster for batch scoring](./1-3.md)__

Another sentence or two that will outline the scenario and what these set of scripts will go over. This is the second sentence of the description to give you a sense of how long descriptions should be.

__[[1-4] Deploy your DL model across a cluster for batch scoring](./1-4.md)__

Another sentence or two that will outline the scenario and what these set of scripts will go over. This is the second sentence of the description to give you a sense of how long descriptions should be. 
