# Choosing your Compute Platform
Azure's AI IaaS++ stack offers many different flexible compute platforms. Often times it is confusing to choose which to use for the scenario at hand. Below are two decision tree to provide guidance on each of the following compute platforms:

| Name | Summary |
| --- | --- | 
| DSVM / DLVM | The Azure DSVM / DLVM is ... |
| Azure Kubernetes Service (AKS) | AKS is ... | 
| Azure Distributed Data Engineering Toolkit (AZTK) | AZTK is ... | 
| Azure Batch AI | Azure Batch AI is ... | 
| Hadoop Insight (HDI) | HDI is ... | 

### Training <a name="choosing-your-compute-platform-training"></a>
When training...
![Decision Tree for Experimentation & Training Workloads](assets/decision_tree_for_experimentation_and_training.png)

### Scoring & Inference <a name="choosing-your-compute-platform-scoring-&-inference"></a>
When scoring...
![Decision Tree for Scoring & Inference](assets/decision_tree_for_scoring_and_inference.png)

### Additional Considerations <a name="choosing-your-compute-platform-additional-considerations"></a>
While the above decision trees are useful for most scenarios, each of these services have limitations that may restrict what you choose. Please see the table below:

| | DSVM / DLVM | AZTK | BatchAI | AKS | HDI | 
| --- | --- | --- | --- | --- | --- |
| GPU Support | 1 | 1 | 1 | 1 | 0 |
| Low Priority VMs | 0 | 1 | 1 | 0 | 0 |
| Ability to integrate with Azure Functions | 1 | 1 | 1 | 1 | 0 |
| Machine Learning Server | 0 | 0 | 0 | 0 | 1 |


