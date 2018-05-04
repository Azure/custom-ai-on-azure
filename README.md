# Custom AI on Azure
The repository is a set of utility scripts, tutorials, and recommended architectures to deploy production custom AI on Azure. This repo assumes a level of proficiency in Azure and is targeted for seasoned data engineers and data scientists.

## Toolkit Sections

[__Scripts__](./scripts)

In this repository, we provide a set of scripts that you can use to deploy your AI solutions on Azure. This includes scripts for experimentation/training and operationalization/scoring. These scripts can be used as utilities to help you easily deploy your environments in Azure.

[__Tutorials__](./tutorials)

This section includes an aggregration of tutorials created by data scientists and data engineers in Microsoft. These tutorials were developed along real customer scenarios. They cover end-to-end scenarios covering both the data science portions and how these solutions would be be operationalized.

[__Recommended Architectures__](./architectures)

This section is an aggregation of recommended architectures that have been deployed by real Microsoft customers. These architectures should be used along side the scripts provided by this repo and give you a better idea of the broader end-to-end solution.

[__Compute Platforms__](./compute-platforms.md)

When it comes to choosing which tools to use in Azure, customers are often left confused by the myriad of options. This section is a short guide on which compute platforms in Azure to use and introduces a simple framework for making these decisions.

## What and Why 

__What is Custom AI on Azure?__

Today in Azure, there are a myriad of tools and services that were designed for AI workloads. However, for a data scientist new to Azure, there are several entry points where on can start to develop and eventually deploy their AI solutions. 

| Tier | Customizability | Audience | Services |
|---|---|---|---|
| Highest | Limited | Developers | Cognitive Services |
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
