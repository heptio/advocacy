# Abstract

Following up on a self authored white paper, we explore the current state of running stateful applications in Kubernetes. 
We define any outstanding issues, and offer a prescriptive formula for learning how to measure if running a stateful application in Kubernetes is right for you.

# Description

We start off by defining what a stateful application is. We offer examples, and define the scale of stateless to stateful. We learn it's not as black and white as we once thought.

We offer an overview of the primitives in place with Kubernetes 1.10 for running stateful workloads. We find gaps in the tooling, and suggest where we might need more work.

  - Operating stateful workloads after deployment
  - Disk management and backup
  - Disaster recovery

We then have enough definition in place to touch on the problem space with stateful workloads in Kubernetes. Here we learn about the 4 metrics we will be using to measure the risk of running stateful workloads.

  - New system complexity 
  - Orchestration value 
  - Persistence cost
  - Time budget

We close the keynote by defining a formula that users can use to calculate if running a stateful workload makes sense for them. 

_Despite being controversial, we will close the keynote with the following message:_

*We will tell the audience that stateful workloads sometimes make sense*


