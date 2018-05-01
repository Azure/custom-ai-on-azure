# Architecture Deepdives
This section is a collection of real-world end-to-end architectures for AI solutions that are in production on Azure. This collection is indented to provide examples on how you may want to deploy your AI solution in a production ready setting. 

Each end-to-end architecture will also link back to relevant parts of the tutorial section so that you can deploy the same thing.

[__0-1 Demand Forecasting with Spark__](./0-1)

This case-study is an end-to-end IoT scenario that uses Spark on AZTK for processing, training and scoring signal data. The goal was to design an architecture that can host the required use case, that can scale and that can meet Walmart's future operational requirements. We compared multiple compute options on following Criteria:
- Cost: With the AM/MI use case, Walmart is looking to save the cost. Thus, we consider it as a major factor.
- Scalability: The Poc is aimed at 200 stores but Walmart has 11000 stores and the solution should be scalable to 11000 stores. 
- Performance:  Walmart use cases require batch scoring/training frequency on hourly basis
- Inclusiveness: the ability to support multiple Walmart use cases over the same architecture.
- Operationalization/Orchestration: The components should provide SDK or a way to operationalize the scoring/training, i.e. able to build end to end data pipeline and provide scheduling

[__0-2 Real-time Predictive Maintenance with Deep Learning__](./0-2)

This case-study illustrates how AKS can be used for scoring CNN models in real-time in a large scale predictive maintenance scenario.
<todo>
