---
title : "Tạo Aurora Cluster"
date :  "2025-07-10" 
weight : 2 
chapter : false
pre : " <b> 3.2 </b> "
---

Bây giờ chúng ta sẽ tạo primary Aurora cluster trong region ap-southeast-1. Cluster này sẽ là nguồn chính cho Global Database.

## Tạo Primary Aurora Cluster

### 1. Truy cập RDS Console
- Mở [Amazon RDS Console](https://console.aws.amazon.com/rds/)
- Đảm bảo bạn đang ở region **ap-southeast-1 (Singapore)**
- Click **Create database**

### 2. Chọn Engine
- **Engine type**: `Aurora (MySQL Compatible)`
- **Engine version**: Chọn phiên bản mới nhất (ví dụ: Aurora MySQL 8.0.mysql_aurora.3.04.0)
- **Templates**: `Dev/Test` (để tiết kiệm chi phí)

### 3. Cấu hình Settings
- **DB cluster identifier**: `workshop-aurora-cluster-primary`
- **Credentials Settings**:
  - **Master username**: `admin`
  - **Credentials management**: `Self managed`
  - **Master password**: Tạo password mạnh hoặc chọn `Auto generate password`

### 4. Cấu hình Instance
- **DB instance class**: `Serverless v2`
- **Capacity range**:
  - **Minimum**: `2 ACUs`
  - **Maximum**: `16 ACUs`

{{% notice info %}}
Aurora Serverless v2 tự động điều chỉnh capacity dựa trên workload, giúp tối ưu hóa chi phí và hiệu suất.
{{% /notice %}}

### 5. Cấu hình Availability & Durability
- **Multi-AZ deployment**: `Create an Aurora Replica or Reader node in a different AZ`

### 6. Cấu hình Connectivity
- **Compute resource**: `Don't connect to an EC2 compute resource`
- **Network type**: `IPv4`
- **Virtual private cloud (VPC)**: `workshop-vpc-primary`
- **DB subnet group**: `workshop-db-subnet-group-primary`
- **Public access**: `No`
- **VPC security group**: 
  - Remove default security group
  - Add `workshop-sg-aurora-primary`
- **Database port**: `3306`

### 7. Cấu hình Database Authentication
- **Database authentication**: `Password authentication`

### 8. Cấu hình Monitoring
- **Performance Insights**: `Enable Performance Insights`
- **Retention period**: `7 days` (Free tier)
- **Enhanced monitoring**: `Enable enhanced monitoring`
- **Granularity**: `60 seconds`

### 9. Cấu hình Additional
- **Initial database name**: `TiengAnhMoiNgay`
- **Backup retention period**: `7 days`
- **Copy tags to snapshots**: `Enable`
- **Encryption**: `Enable encryption`
- **Log exports**: Chọn `Error log`, `General log`, `Slow query log`

### 10. Tạo Database
- Review tất cả cấu hình
- Click **Create database**

{{% notice warning %}}
Quá trình tạo Aurora cluster có thể mất 10-15 phút. Hãy đợi cho đến khi cluster status chuyển thành `Available` trước khi tiếp tục.
{{% /notice %}}

## Xác minh Aurora Cluster

Sau khi cluster được tạo thành công:

1. **Kiểm tra Cluster Status**: Đảm bảo status là `Available`
2. **Ghi chú Endpoint**: Lưu lại cluster endpoint và reader endpoint
3. **Kiểm tra Instances**: Xác minh có 2 instances (1 writer, 1 reader)
4. **Kiểm tra Security Group**: Đảm bảo security group được áp dụng đúng

Cluster endpoint sẽ có dạng: `workshop-aurora-cluster-primary.cluster-xxxxx.ap-southeast-1.rds.amazonaws.com`

Bây giờ chúng ta đã có primary Aurora cluster sẵn sàng để tạo Global Database!
