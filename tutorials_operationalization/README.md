# Tutorials for Operationalization
These tutorials are categorized by scenario and thus often contains multiple Azure components. 

## Using Azure Functions to provision a DSVM for periodic batch scoring
Azure functions can be used with the DSVM to automate your batch scoring jobs.

1. Deploy your DSVM from Azure Functions 
2. Automate your Azure Function to read & write data from Blob Storage

Please see this architecture [link] reference for a full end-to-end batch scoring sceanrio with Spark on AZTK.

## Deploy your Spark model to AZTK for batch processing/training/scoring
AZTK allows you to deploy, manage and run Apache Spark clusters in a simple and cost-efficient way.

1. Deploy a CPU or GPU enabled AZTK Spark cluster from your local machine
2. Setting up your AZTK Spark cluster to read/write data from Azure Blob
3. Use AZTK's interactive-mode to run jupyter notebooks and the Spark UI
4. Use Azure Functions to automate your AZTK batch job 
5. [Enterprise-Ready] Deploy your AZTK clusters in a Virtual Network

Please see this architecture [link] reference for a full end-to-end batch scoring sceanrio with Spark on AZTK.

## Deploy your DL model to BatchAI for batch scoring
BatchAI allows you to deploy, manage and run compute intensive deep learning jobs in a cost-efficient way.

1. Deploy a CPU or GPU enabled BatchAI cluster from your local machine
2. Mount a fileshare to your BatchAI cluster
3. Set up Tensorboard on BatchAI for monitoring your run history
3. Use Azure Functions to automate your DL jobs 

Please see this architecture [link] reference for a full end-to-end batch scoring sceanrio with Tensorflow on BatchAI.
