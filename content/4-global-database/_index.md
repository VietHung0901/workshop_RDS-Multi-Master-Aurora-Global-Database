---
title : "Create Global Database"
date :  "2025-07-10" 
weight : 4 
chapter : false
pre : " <b> 4. </b> "
---

In this step, we will create an Aurora Global Database by adding our primary cluster to a global database and then creating a secondary cluster in the us-west-2 (Oregon) region.

Aurora Global Database enables fast local reads in multiple regions and provides disaster recovery capabilities with typical replication lag of less than 1 second.

### What we will do:

1. **Create Global Database** - Convert our primary cluster to be part of a global database
2. **Add Secondary Region** - Create a secondary cluster in us-west-2 region
3. **Configure Cross-Region Replication** - Set up automatic data replication
4. **Test Connectivity** - Verify both clusters are working correctly

### Global Database Architecture:

```
Primary Region (ap-southeast-1)          Secondary Region (us-west-2)
┌─────────────────────────────┐         ┌─────────────────────────────┐
│  Primary Aurora Cluster     │         │  Secondary Aurora Cluster   │
│  ┌─────────────────────────┐│         │  ┌─────────────────────────┐│
│  │     Writer Instance     ││   ====> │  │    Reader Instance      ││
│  └─────────────────────────┘│         │  └─────────────────────────┘│
│  ┌─────────────────────────┐│         │  ┌─────────────────────────┐│
│  │     Reader Instance     ││         │  │    Reader Instance      ││
│  └─────────────────────────┘│         │  └─────────────────────────┘│
└─────────────────────────────┘         └─────────────────────────────┘
```

### Key Features:

- **Fast Replication**: Data is replicated across regions with typical latency of less than 1 second
- **Read Scaling**: Each secondary region can have up to 16 read replicas
- **Disaster Recovery**: Quick failover capability (typically less than 1 minute)
- **Global Reads**: Serve read traffic from the region closest to your users

Let's start creating our Global Database setup.
