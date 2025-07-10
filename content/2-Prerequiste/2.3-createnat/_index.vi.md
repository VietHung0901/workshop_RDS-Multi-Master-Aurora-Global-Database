---
title: "Tạo NAT gateway"
date: "2025-07-10"
weight: 3
chapter: false
pre: "<b>2.3 </b>"
---

## Tạo NAT gateway

### 🎯 Mục tiêu:
Thiết lập **NAT Gateway** để các EC2 trong private subnet (server) có thể truy cập internet và cài đặt các gói phần mềm cần thiết.

{{% notice info %}}
**Ghi chú**: NAT Gateway giúp các instance trong private subnet có thể truy cập internet mà không bị lộ địa chỉ IP công khai.
{{% /notice %}}

---

### 🔹 Bước 1: Tạo Elastic IP

1. Truy cập vào **EC2 Console**.
2. Chọn **Elastic IPs** ở menu bên trái.
3. Nhấn **Allocate Elastic IP**.
4. Lưu lại Elastic IP để gán cho NAT Gateway ở bước tiếp theo.

📸 *Minh họa:*

![Tạo Elastic IP](/images/2.prerequisite/09-createnat.png)

---

### 🔹 Bước 2: Tạo NAT Gateway

1. Truy cập **VPC Console** > Chọn **NAT Gateways**.
2. Nhấn **Create NAT Gateway** và cấu hình:
   - **Name**: `workshop-ngw-server-primary`
   - **Subnet**: `workshop-subnet-public1-ap-southeast-1a`
   - **Connectivity type**: `Public`
   - **Elastic IP**: chọn IP vừa tạo ở bước 1

📸 *Minh họa:*

![Tạo NAT Gateway](/images/2.prerequisite/10-createnat.png)

---

### 🔹 Bước 3: Cập nhật Route Table của Private Subnet

1. Vào **Route Tables**.
2. Chọn Route Table của server (ví dụ: `rtb-server-private1`).
3. Nhấn **Edit routes** và thêm dòng:
   - **Destination**: `0.0.0.0/0`
   - **Target**: `NAT Gateway` (vừa tạo ở bước 2)

📸 *Minh họa:*

![Sửa Route Table](/images/2.prerequisite/11-createnat.png)

---

✅ **Hoàn tất**: Server trong private subnet giờ đây có thể truy cập internet thông qua NAT Gateway.
