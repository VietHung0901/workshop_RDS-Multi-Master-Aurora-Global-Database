---
title : "Prerequisites"
date :  "2025-07-10" 
weight : 2 
chapter : false
pre : " <b> 2. </b> "
---

{{% notice info %}}
You need to create VPC infrastructure and EC2 instances in two different AWS regions to perform this workshop. We will use ap-southeast-1 (Singapore) as the primary region and us-west-2 (Oregon) as the secondary region.
{{% /notice %}}

To understand how to create EC2 instances and VPC with public/private subnets, you can refer to these labs:
  - [Introduction to Amazon EC2](https://000004.awsstudygroup.com/)
  - [Working with Amazon VPC](https://000003.awsstudygroup.com/)

In this preparation section, we will create the necessary infrastructure for Aurora Global Database including:
- VPC and networking components in both regions
- EC2 instances for application deployment
- Security groups for database and application access
- IAM roles for Aurora and application services

### Content
  - [Prepare VPC and EC2 Instances](2.1-createec2/)
  - [Create IAM Roles](2.2-createiamrole/)
