---
title : "Introduction"
date :  "2025-07-10" 
weight : 1 
chapter : false
pre : " <b> 1. </b> "
---
**Amazon Aurora Global Database** is a feature of Amazon Aurora that enables a single Aurora database to span multiple AWS regions. It provides fast local reads in each region and disaster recovery from region-wide outages.

Aurora Global Database uses dedicated infrastructure to replicate your data, leaving database resources available entirely for serving application workloads. On average, Global Database replicates data with typical latency of less than 1 second.

By using Aurora Global Database, you get the following advantages:

- **Global reads with local latency**: You can serve read traffic from the AWS Region closest to your users with typical latency of less than 1 second.
- **Scalable secondary Aurora clusters**: You can add up to 5 secondary regions, and each secondary cluster can have up to 16 Aurora Replica instances.
- **Fast replication**: Aurora Global Database uses dedicated infrastructure that leaves your database fully available to serve application workloads.
- **Recovery from region-wide outages**: The secondary clusters enable fast failover for disaster recovery. You can typically promote a secondary cluster and make it available for writes in less than 1 minute.
- **Highly available**: Aurora Global Database provides higher availability than a single-region deployment.

### Key Components:

- **Primary cluster**: The Aurora cluster in your primary AWS Region where your data is mastered. This cluster can perform both read and write operations.
- **Secondary cluster**: An Aurora cluster in a different AWS Region than the primary cluster. The secondary cluster supports only read operations.
- **Global database**: The global database contains the primary cluster and up to five secondary clusters.

With Aurora Global Database, you can build globally distributed applications without the complexity of managing database replication.
