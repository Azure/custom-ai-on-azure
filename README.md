# Custom AI on Azure
This repository is a collection of scripts and tutorials to help AI developers effectively use Azure for their AI workloads. In this repository, we explore several key paths when developing custom AI on Azure. Each path will provide infrastructure guidance, scripts for deployment, and tutorials to educate readers in a step-by-step fashion.

## Paths

![Learning Paths](assets/custom-ai-on-azure-diagram.png)

### [1] Experimentation & Training

__[1-1] Single-node training/experimentation: DVSM__

__[1-2] Multi-node training/experimentation: DSVM + BatchAI__

### [2] Scoring & Inference

__[2-1] Real-time scoring with machine learning models using Spark__

__[2-2] Real-time scoring with machine learning models without using Spark__

__[2-3] Batch scoring with machine learning models using Spark__

__[2-4] Batch scoring with machine learning models without usuing Spark__

__[2-5] Real-time scoring with deep learning models__

__[2-6] Batch scoring with deep learning models__

## What and Why 

__What is Custom AI on Azure?__

Today in Azure, there are a myriad of tools and services that were designed for AI workloads. However, for a data scientist new to Azure, there are several entry points where on can start to develop and eventually deploy their AI solutions. 

| Tier | Customizability | Audience | Services |
|---|---|---|---|
| Highest | Limited | Developers | Cognitive Services, Azure Search, Bot Framework |
| **Middle** | **Flexible** | **AI Developers** | **AML, DSVM/DLVM, AZTK, BatchAI, AKS, Azure Functions, Data Factory** |
| Lowest Tier | Maximal | IT | Compute, Network, Storage |

This toolkit focuses on the middle tier illustrated in the table above.

__Why use Custom AI on Azure?__

Customers can choose to use Azure at any layer of the stack. Each layer has its own mix of benefits and limitations. 

Generally speaking, users may want to use the Custom AI on Azure because they want to build their AI solution on flexible & customizable way, yet not have to worry about managing their infrastructure. Additionally, many of the tools and services in the Custom AI on Azure stack tends to be more generally available (across regions) and often adheres to higher compliance and security requirements. 

| | Pure IaaS | Custom AI on Azure Stack | Cognitive Services | 
| --- | --- | --- | --- |
| Compliance & Security | Mature | Mature | Less Mature |
| Costs | Low | Low | High |
| Flexibility & Customizibility | High | High | Low |
| Availability | Mature | Mature | Less Mature |

*The table above compares the categories in a general sense. Individual services or tools belonging to each category may not strictly adhere to the table above.

## Contributing <a name="contributing"></a>

This project welcomes contributions and suggestions.  Most contributions require you to agree to a
Contributor License Agreement (CLA) declaring that you have the right to, and actually do, grant us
the rights to use your contribution. For details, visit https://cla.microsoft.com.

When you submit a pull request, a CLA-bot will automatically determine whether you need to provide
a CLA and decorate the PR appropriately (e.g., label, comment). Simply follow the instructions
provided by the bot. You will only need to do this once across all repos using our CLA.

This project has adopted the [Microsoft Open Source Code of Conduct](https://opensource.microsoft.com/codeofconduct/).
For more information see the [Code of Conduct FAQ](https://opensource.microsoft.com/codeofconduct/faq/) or
contact [opencode@microsoft.com](mailto:opencode@microsoft.com) with any additional questions or comments.
