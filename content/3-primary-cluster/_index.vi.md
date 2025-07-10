---
title : "Tạo Primary Aurora Cluster"
date :  "2025-07-10" 
weight : 3 
chapter : false
pre : " <b> 3. </b> "
---

Trong bước này, chúng ta sẽ tạo primary Aurora cluster trong vùng ap-southeast-1 (Singapore). Cluster này sẽ đóng vai trò là cơ sở dữ liệu chính cho thiết lập Global Database của chúng ta.

Primary Aurora cluster sẽ xử lý cả hoạt động đọc và ghi và sẽ là nguồn chính thực cho việc sao chép dữ liệu đến các vùng phụ.

### Những gì chúng ta sẽ tạo:

1. **DB Subnet Group** - Xác định subnet nào Aurora có thể sử dụng
2. **Security Group** - Kiểm soát truy cập mạng đến Aurora cluster
3. **Aurora MySQL Cluster** - Primary database cluster với:
   - Aurora Serverless v2 để tự động mở rộng
   - Triển khai Multi-AZ để có tính khả dụng cao
   - Enhanced monitoring được bật
   - Cấu hình backup retention

### Cấu hình chính:

- **Engine**: Aurora MySQL Compatible
- **Version**: Phiên bản mới nhất có sẵn
- **Instance Class**: Serverless v2 (tự động mở rộng từ 2 đến 16 ACU)
- **Storage**: Aurora Standard
- **Multi-AZ**: Được bật với reader instance trong AZ khác
- **Backup**: Lưu trữ 7 ngày
- **Monitoring**: Enhanced monitoring được bật

Hãy bắt đầu bằng cách tạo các thành phần cần thiết cho primary Aurora cluster của chúng ta.
