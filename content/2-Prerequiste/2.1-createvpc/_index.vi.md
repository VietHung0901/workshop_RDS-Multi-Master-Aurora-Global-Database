---
title: "Tạo VPC"
date: "2025-07-10"
weight: 1
chapter: false
pre: "<b>2.1 </b>"
---

## Tạo VPC

### Bước 1: Truy cập giao diện VPC

1. Mở trình duyệt và truy cập vào [AWS VPC Console](https://console.aws.amazon.com/vpc/home).
2. Ở thanh bên trái, chọn **Your VPCs**.
3. Nhấn **Create VPC** để bắt đầu tạo mới.

![VPC](/images/2.prerequisite/01-createvpc.png)

---

### Bước 2: Cấu hình VPC

Tại trang **Create VPC**, điền thông tin cấu hình như sau:

#### Thông tin chung:
- **Resource to create**: `VPC and more`
- **Name**: `workshop`
- **IPv4 CIDR block**: `10.0.0.0/16`
- **Tenancy**: `Default`

![VPC](/images/2.prerequisite/02-createvpc.png)

#### Cấu hình mạng:
- **Number of Availability Zones**: `2`
- **Number of public subnets**: `2`
- **Number of private subnets**: `4`

![VPC](/images/2.prerequisite/03-createvpc.png)

#### Cấu hình bổ sung:
- **NAT gateway**: `None`
- **VPC endpoints**: `None`

Sau khi điền đầy đủ thông tin, nhấn **Create VPC**.

![VPC](/images/2.prerequisite/04-createvpc.png)

---

### Bước 3: Kiểm tra sơ đồ tài nguyên

Sau khi tạo VPC thành công, bạn sẽ thấy sơ đồ các tài nguyên được tạo tự động:

![VPC](/images/2.prerequisite/05-createvpc.png)

---

### Bước 4: Bật tính năng gán IP công tự động

Sau khi tạo VPC, cần bật tự động gán địa chỉ IP công cho 2 public subnet:

1. Vào từng public subnet.
2. Chọn **Actions** > **Edit subnet settings**.
3. Bật tùy chọn **Auto-assign IPv4 address**.

![VPC](/images/2.prerequisite/06-createvpc.png)

---

✅ **Hoàn tất**: Bạn đã tạo xong một VPC cơ bản với 2 public subnet và 4 private subnet để sử dụng trong các bài lab tiếp theo.
