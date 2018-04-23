## How to add your tutorial to this repository
In order to add a tutorial to this repository, you must make a pull-request to edit this page. 

When adding your tutorial, make sure you follow the below convention:

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

## Tutorial Guidelines
The tutorial should follow the below guidelines:

__Content__

The content of the tutorial must include a real AI scenario, showing how the model is created as well as how the model is deployed into Azure. 

__Notebooks__ 

In your tutorial, your notebooks should be in a state where all the cells are already executed. Each cell should be properly annotated such that a reader without prior context will be able to use each notebook, or your set of notebooks, independently. You must also make sure that no private keys are left on the notebook.
