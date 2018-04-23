# Tutorials
The following tutorials are created by data scientists and data engineers in Microsoft. These tutorials were developed along real customer scenarios. They cover end-to-end scenarios covering both the data science portions and how these solutions would be operationalized. 

### [Deploy your DL model to AKS for real-time request/response workloads](https://github.com/Microsoft/AKSDeploymentTutorial)
| | |
| :-- | --- |
| Date of Posting  | 4/23/2018 |
| Author(s) | Fidan Boylu Uz & Mathew Salvaris | 
| Azure services | AKS, N-series VMs | 
| Opensource tools | Tensorflow, Keras, Docker, Flask |
| Description | This tutorial goes through step-by-step instructions on how to deploy a pretrained deep learning model on a GPU enabled Kubernetes cluster. |

### [End-to-End Anomaly Detection Jobs using Azure Batch AI](https://github.com/saidbleik/batchai_mm_ad)
| | |
| :-- | --- |
| Date of Posting  | 4/23/2018 |
| Author(s) | Said Bleik | 
| Azure services | Batch AI, Event Hub, Stream Analytics, SQL Database, Blob Storage | 
| Opensource tools | Scikit-Learn, cron, SQL |
| Description | This walkthrough shows how an end-to-end anomaly detection system can be implemented for IoT use cases. The solution is built on Microsoft's Azure stack and includes multiple cloud services that allow handling data streaming, data processing, model training/predicting, and data storage. The main component here is Batch AI, a cloud service that enables users to submit parallel jobs to a cluster of high performing virtual machines. |

---

# How to add tutorial to this repository
In order to add a tutorial to this repo, you must make a pull-request to edit this page. The tutorial should follow the below guidelines:

__Adding your tutorial to this page__

When adding your tutorial to this page, make sure you follow the below convention:

```
### [<My Tutorial Name>](url_to_tutorial)
| | |
| :-- | --- |
| Date of Posting  | <date of posting in MM/DD/YYYY format> |
| Author(s) | <comma separated list of authors> | 
| Azure services | <comma separated list of Azure technologies> | 
| Opensource tools | <comma separated list of open source technologies> |
| Description | <A sentence describing what your tutorial does> |
```

Here's an example:
```
### [Deploy your DL model to AKS for real-time request/response workloads](https://github.com/Microsoft/AKSDeploymentTutorial)
| | |
| :-- | --- |
| Date of Posting  | 4/23/2018 |
| Author(s) | Fidan Boylu Uz & Mathew Salvaris | 
| Azure services | AKS, N-series VMs | 
| Opensource tools | Tensorflow, Keras, Docker, Flask |
| Description | This tutorial goes through step-by-step instructions on how to deploy a pretrained deep learning model on a GPU enabled Kubernetes cluster. |
```

__Content__

The content of the tutorial must include a real AI scenario, showing how the model is created as well as how the model is deployed into Azure. When adding your tutorial to this page, please be cognizant of the two categories on this page: __Experimentation & Model Development__ and __Operationalization & Model Deployment__ and select the appropriate category for your tutorial.

__Notebooks__ 

In your tutorial, your notebooks should be in a state where all the cells are already executed. Each cell should be properly annotated such that a reader without prior context will be able to use each notebook, or your set of notebooks, independently. You must also make sure that no private keys are left on the notebook.


---

scratch

### [0] Using Azure Functions to provision a DSVM for periodic batch scoring
Azure functions can be used with the DSVM to automate your batch scoring jobs.

- [0_0] Deploy your DSVM from Azure Functions
- [0_1] Automate your Azure Function to read & write data from Blob Storage

Please see this architecture [link] reference for a full end-to-end batch scoring sceanrio with Spark on AZTK.

### [1] Deploy your Spark model to AZTK for batch processing/training/scoring
AZTK allows you to deploy, manage and run Apache Spark clusters in a simple and cost-efficient way. 

AZTK has two primary _modes_: interactive mode and job-submission mode. The difference between these two modes is that interactive mode lets users manage their Spark clusters while job-submission mode will automatically provision/deprovision your cluster based on the job. 

Unless otherwise stated, this set of tutorials will use AZTK's interactive mode.

- [[1_0] Deploy a CPU or GPU enabled AZTK Spark cluster from your local machine](/tutorials_operationalization/1_0.md)
- [1_1] Setting up your AZTK Spark cluster to read/write data from Azure Blob
- [1_2] Use AZTK's run jupyter notebooks and the Spark UI
- [1_3] Use Azure Functions to automate your AZTK batch job using AZTK's job-submission mode
- [1_4] [Enterprise-Ready] Deploy your AZTK clusters in a Virtual Network

Please see this architecture [link] reference for a full end-to-end batch scoring sceanrio with Spark on AZTK.

For additional details about AZTK, please visit the [AZTK repo](https://www.github.com/azure/aztk).

### [2] Deploy your DL model to BatchAI for batch scoring
BatchAI allows you to deploy, manage and run compute intensive deep learning jobs in a cost-efficient way.

- [2_0] Deploy a CPU or GPU enabled BatchAI cluster from your local machine
- [2_1] Mount a fileshare to your BatchAI cluster
- [2_2] Set up Tensorboard on BatchAI for monitoring your run history
- [2_3] Use Azure Functions to automate your DL jobs 
- [2_4] Use Azure Data Factory to automate your DL jobs

Please see this architecture [link] reference for a full end-to-end batch scoring sceanrio with Tensorflow on BatchAI.

For an End-to-End Anomaly Detection scenario using Azure Batch AI, please refer to this: https://github.com/saidbleik/batchai_mm_ad

### [3] Deploy your DL model to AKS for real-time request/response workloads
Deploying to AKS is most suited for real-time request/response workloads. 

See this repo (https://github.com/Microsoft/AKSDeploymentTutorial) to talk through the following steps:
- Model development where we load the pretrained model and test it by using it to score images
- Developing the interface our Flask app will use to load and call the model
- Building the Docker Image with our Flask REST API and model
- Testing our Docker image before deployment
- Creating our Kubernetes cluster and deploying our application to it
- Testing the deployed model
- Testing the throughput of our model

