# Tutorials
The following tutorials are created by data scientists and data engineers in Microsoft. These tutorials were developed along real customer scenarios. They cover end-to-end scenarios covering both the data science portions and how these solutions would be operationalized. 

Visit [this page](./contribute.md) for instructions on how to add your tutorial to this page.

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

### [Scale out your Monte Carlo Simulations (with R) on Azure Batch](https://docs.microsoft.com/en-us/azure/batch/tutorial-r-doazureparallel)
| | |
| :-- | --- |
| Date of Posting  | 01/23/2018 |
| Author(s) | JS Tan | 
| Azure services | Azure Batch | 
| Opensource tools | R, doAzureParallel, Foreach, doParallel |
| Description | This tutorial is for R users who want to scale out their parallel R jobs in the cloud. The solution is centered around an opensource R Package, developed by Microsoft, called doAzureParallel. This tutorial shows you how to deploy a Batch pool and run a parallel R job in Azure Batch directly within RStudio. You learn how to:<ul><li>Install doAzureParallel and configure it to access your Batch and storage accounts</li><li>Create a Batch pool as a parallel backend for your R session</li><li>Run a sample parallel simulation on the pool</li></ul>|
