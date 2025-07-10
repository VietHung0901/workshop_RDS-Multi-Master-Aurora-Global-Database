---
title : "Tạo DB Subnet Group"
date :  "2025-07-10" 
weight : 1 
chapter : false
pre : " <b> 3.1 </b> "
---

DB Subnet Group xác định các subnet mà Aurora cluster có thể sử dụng. Chúng ta cần tạo subnet group trong cả hai region.

## Tạo DB Subnet Group cho Primary Region

### 1. Truy cập RDS Console
- Mở [Amazon RDS Console](https://console.aws.amazon.com/rds/)
- Đảm bảo bạn đang ở region **ap-southeast-1 (Singapore)**

### 2. Tạo Subnet Group
- Trong navigation pane, chọn **Subnet groups**
- Click **Create DB subnet group**

### 3. Cấu hình Subnet Group
- **Name**: `workshop-db-subnet-group-primary`
- **Description**: `DB subnet group for Aurora cluster in primary region`
- **VPC**: Chọn `workshop-vpc-primary`

### 4. Add Subnets
- **Availability Zones**: 
  - Chọn `ap-southeast-1a`
  - Chọn `ap-southeast-1b`
- **Subnets**:
  - Chọn Private Subnet 3 (10.0.5.0/24) trong ap-southeast-1a
  - Chọn Private Subnet 4 (10.0.6.0/24) trong ap-southeast-1b

{{% notice info %}}
Aurora yêu cầu subnet group phải có ít nhất 2 subnet trong 2 Availability Zone khác nhau để đảm bảo tính khả dụng cao.
{{% /notice %}}

### 5. Tạo Subnet Group
- Click **Create** để tạo DB subnet group

## Tạo DB Subnet Group cho Secondary Region

Lặp lại các bước tương tự trong region **us-west-2** với:
- **Name**: `workshop-db-subnet-group-secondary`
- **Description**: `DB subnet group for Aurora cluster in secondary region`
- **VPC**: `workshop-vpc-secondary`
- **Subnets**: Chọn 2 private subnet dành cho Aurora trong us-west-2

Sau khi hoàn thành, bạn sẽ có DB subnet group trong cả hai region, sẵn sàng để tạo Aurora cluster.
