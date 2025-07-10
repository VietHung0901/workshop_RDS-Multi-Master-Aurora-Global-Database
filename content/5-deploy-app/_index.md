---
title : "Deploy Application"
date :  "2025-07-10" 
weight : 5 
chapter : false
pre : " <b> 5. </b> "
---

In this step, we will deploy a sample Java Spring Boot application that demonstrates how to work with Aurora Global Database. The application will be deployed in both regions to showcase global read capabilities.

Our application will be configured to:
- Write to the primary cluster in ap-southeast-1
- Read from the local cluster in each region for optimal performance
- Handle database connections with proper failover logic

### Application Architecture:

```
┌─────────────────────────────────────────────────────────────────────┐
│                          Global Application                          │
├─────────────────────────────┬───────────────────────────────────────┤
│     Primary Region          │         Secondary Region              │
│    (ap-southeast-1)         │          (us-west-2)                  │
│                             │                                       │
│  ┌─────────────────────┐    │    ┌─────────────────────┐            │
│  │   Load Balancer     │    │    │   Load Balancer     │            │
│  └─────────────────────┘    │    └─────────────────────┘            │
│           │                 │             │                         │
│  ┌─────────────────────┐    │    ┌─────────────────────┐            │
│  │   EC2 Instances     │    │    │   EC2 Instances     │            │
│  │   (Java App)        │    │    │   (Java App)        │            │
│  └─────────────────────┘    │    └─────────────────────┘            │
│           │                 │             │                         │
│  ┌─────────────────────┐    │    ┌─────────────────────┐            │
│  │  Primary Aurora     │    │    │  Secondary Aurora   │            │
│  │   (Read/Write)      │    │    │   (Read Only)       │            │
│  └─────────────────────┘    │    └─────────────────────┘            │
└─────────────────────────────┴───────────────────────────────────────┘
```

### What we will do:

1. **Configure Application Properties** - Set up database connections for both regions
2. **Deploy to Primary Region** - Install and configure the application in ap-southeast-1
3. **Deploy to Secondary Region** - Install and configure the application in us-west-2
4. **Set up Load Balancers** - Create ALB in both regions for high availability
5. **Test Global Reads** - Verify the application can read from local clusters
6. **Test Write Operations** - Confirm writes go to the primary cluster

### Application Features:

- **English Learning Platform**: A sample application for learning English
- **Multi-Region Support**: Configured to work with Aurora Global Database
- **Read/Write Separation**: Optimized for global read performance
- **Health Checks**: Built-in health monitoring for load balancers
- **Auto Scaling**: Configured with Auto Scaling Groups

Let's start deploying our application across both regions.
