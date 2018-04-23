# AI on IaaS++ Toolkit
The AI on IaaS++ toolkit is a set of utility scripts, tutorials, and recommended architectures to deploy production code on Azure's AI IaaS++ stack. This repo assumes a level of proficiency in Azure and is targeted for seasoned data engineers and data scientists.

[__Scripts__](./scripts)

A set of scripts that you can use to deploy your AI solutions on Azure's AI on IaaS++. This includes scripts for experimentation/training and operationalization/scoring.

[__Tutorials__](./tutorials)

An aggregration of tutorials created by data scientists and data engineers in Microsoft. 

[__Recommended Architectures__](./architectures)

An aggregation of recommended architectures that have been deployed by real Microsoft customers.

[__Compute Platforms__](./compute-platforms)

A short guide on which compute platforms in Azure to use.

---

### What is Azure's AI IaaS++ stack? <a name="what"></a>
Today in Azure, there are a myriad of tools and services that were designed for AI workloads. However, for a data scientist new to Azure, there are several entry points where on can start to develop and eventually deploy their AI solutions. 

| Tier         | Name   | Services                                       |
|--------------|--------|------------------------------------------------|
| Highest Tier | AI PaaS   | Databricks, AML                                |
| **Middle Tier**  | **AI IaaS++** | **DSVM/DLVM, AZTK, BatchAI, AKS, Azure Functions** |
| Lowest Tier  | IaaS   | Compute, Network, Storage                      |

This toolkit focuses on the middle tier illustrated in the table above.

### Why use Azure's AI IaaS++ stack? <a name="why"></a>
Customers can choose to use Azure at each layer of the stack. Each layer has its own mix of benefits and limitations. 

Generally speaking, users may want to use the Azure's AI IaaS++ stack -- as opposed to Azure's AI PaaS stack -- because they want to build their AI solution in a less opinionated, more flexible & customizable, and more cloud-agnostic manner. Additionally, the tools and services in the AI IaaS++ stack tends to be more generally available (in regions) and often adheres to higher compliance and security requirements. 

| | IaaS | AI IaaS++ | AI PaaS | 
| --- | --- | --- | --- |
| Compliance & Security | Mature | Mature | Less Mature |
| Costs | Low | Low | High |
| Flexibility & Customizibility | High | High | Low |
| Availability | Mature | Mature | Less Mature |

*The table above compares IaaS, IaaS++, and PaaS in a general sense. Individual services or tools belonging to each category may not strictly adhere to the table above.

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
