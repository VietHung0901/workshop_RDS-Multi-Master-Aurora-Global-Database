---
title : "Tạo Global Database"
date :  "2025-07-10" 
weight : 4 
chapter : false
pre : " <b> 4. </b> "
---

Trong bước này, chúng ta sẽ tạo Aurora Global Database bằng cách thêm primary cluster của chúng ta vào global database và sau đó tạo secondary cluster trong vùng us-west-2 (Oregon).

Aurora Global Database cho phép đọc nhanh cục bộ trong nhiều vùng và cung cấp khả năng khôi phục thảm họa với độ trễ sao chép điển hình dưới 1 giây.

### Những gì chúng ta sẽ làm:

1. **Tạo Global Database** - Chuyển đổi primary cluster của chúng ta để trở thành một phần của global database
2. **Thêm Secondary Region** - Tạo secondary cluster trong vùng us-west-2
3. **Cấu hình Cross-Region Replication** - Thiết lập sao chép dữ liệu tự động
4. **Kiểm tra kết nối** - Xác minh cả hai cluster đều hoạt động chính xác

### Kiến trúc Global Database:

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

### Tính năng chính:

- **Sao chép nhanh**: Dữ liệu được sao chép qua các vùng với độ trễ điển hình dưới 1 giây
- **Mở rộng đọc**: Mỗi vùng phụ có thể có tối đa 16 read replica
- **Khôi phục thảm họa**: Khả năng failover nhanh (thường dưới 1 phút)
- **Đọc toàn cầu**: Phục vụ lưu lượng đọc từ vùng gần nhất với người dùng của bạn

Hãy bắt đầu tạo thiết lập Global Database của chúng ta.
