---
title : "Triển khai ứng dụng"
date :  "2025-07-10" 
weight : 5 
chapter : false
pre : " <b> 5. </b> "
---

Trong bước này, chúng ta sẽ triển khai một ứng dụng Java Spring Boot mẫu để minh họa cách làm việc với Aurora Global Database. Ứng dụng sẽ được triển khai trong cả hai vùng để thể hiện khả năng đọc toàn cầu.

Ứng dụng của chúng ta sẽ được cấu hình để:
- Ghi vào primary cluster trong ap-southeast-1
- Đọc từ cluster cục bộ trong mỗi vùng để có hiệu suất tối ưu
- Xử lý kết nối cơ sở dữ liệu với logic failover phù hợp

### Kiến trúc ứng dụng:

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

### Những gì chúng ta sẽ làm:

1. **Cấu hình Application Properties** - Thiết lập kết nối cơ sở dữ liệu cho cả hai vùng
2. **Triển khai đến Primary Region** - Cài đặt và cấu hình ứng dụng trong ap-southeast-1
3. **Triển khai đến Secondary Region** - Cài đặt và cấu hình ứng dụng trong us-west-2
4. **Thiết lập Load Balancer** - Tạo ALB trong cả hai vùng để có tính khả dụng cao
5. **Kiểm tra Global Read** - Xác minh ứng dụng có thể đọc từ cluster cục bộ
6. **Kiểm tra Write Operation** - Xác nhận việc ghi đi đến primary cluster

### Tính năng ứng dụng:

- **Nền tảng học tiếng Anh**: Ứng dụng mẫu để học tiếng Anh
- **Hỗ trợ đa vùng**: Được cấu hình để làm việc với Aurora Global Database
- **Tách biệt Read/Write**: Được tối ưu hóa cho hiệu suất đọc toàn cầu
- **Health Check**: Giám sát sức khỏe tích hợp cho load balancer
- **Auto Scaling**: Được cấu hình với Auto Scaling Group

Hãy bắt đầu triển khai ứng dụng của chúng ta trên cả hai vùng.
