---
title : "Create Primary Aurora Cluster"
date :  "2025-07-10" 
weight : 3 
chapter : false
pre : " <b> 3. </b> "
---

In this step, we will create the primary Aurora cluster in the ap-southeast-1 (Singapore) region. This cluster will serve as the master database for our Global Database setup.

The primary Aurora cluster will handle both read and write operations and will be the source of truth for data replication to secondary regions.

### What we will create:

1. **DB Subnet Group** - Define which subnets Aurora can use
2. **Security Group** - Control network access to the Aurora cluster  
3. **Aurora MySQL Cluster** - The primary database cluster with:
   - Aurora Serverless v2 for automatic scaling
   - Multi-AZ deployment for high availability
   - Enhanced monitoring enabled
   - Backup retention configured

### Key Configuration:

- **Engine**: Aurora MySQL Compatible
- **Version**: Latest available
- **Instance Class**: Serverless v2 (auto-scaling from 2 to 16 ACUs)
- **Storage**: Aurora Standard
- **Multi-AZ**: Enabled with reader instance in different AZ
- **Backup**: 7 days retention
- **Monitoring**: Enhanced monitoring enabled

Let's start by creating the necessary components for our primary Aurora cluster.
