---
title : "Giới thiệu"
date :  "2025-07-10" 
weight : 1 
chapter : false
pre : " <b> 1. </b> "
---
**Amazon Aurora Global Database** là một tính năng của Amazon Aurora cho phép một cơ sở dữ liệu Aurora duy nhất có thể mở rộng trên nhiều AWS region. Nó cung cấp khả năng đọc nhanh tại từng vùng và khôi phục thảm họa từ các sự cố toàn vùng.

Aurora Global Database sử dụng cơ sở hạ tầng chuyên dụng để sao chép dữ liệu của bạn, để lại tài nguyên cơ sở dữ liệu hoàn toàn có sẵn để phục vụ khối lượng công việc của ứng dụng. Trung bình, Global Database sao chép dữ liệu với độ trễ điển hình dưới 1 giây.

Bằng cách sử dụng Aurora Global Database, bạn sẽ có được những ưu điểm sau:

- **Đọc toàn cầu với độ trễ cục bộ**: Bạn có thể phục vụ lưu lượng đọc từ AWS Region gần nhất với người dùng của mình với độ trễ điển hình dưới 1 giây.
- **Các Aurora cluster phụ có thể mở rộng**: Bạn có thể thêm tối đa 5 vùng phụ, và mỗi cluster phụ có thể có tối đa 16 Aurora Replica instance.
- **Sao chép nhanh**: Aurora Global Database sử dụng cơ sở hạ tầng chuyên dụng để cơ sở dữ liệu của bạn hoàn toàn có sẵn để phục vụ khối lượng công việc của ứng dụng.
- **Khôi phục từ sự cố toàn vùng**: Các cluster phụ cho phép failover nhanh để khôi phục thảm họa. Bạn thường có thể promote một cluster phụ và làm cho nó có sẵn để ghi trong vòng chưa đến 1 phút.
- **Tính khả dụng cao**: Aurora Global Database cung cấp tính khả dụng cao hơn so với triển khai một vùng duy nhất.

### Các thành phần chính:

- **Primary cluster**: Aurora cluster trong AWS Region chính của bạn nơi dữ liệu được làm chủ. Cluster này có thể thực hiện cả hoạt động đọc và ghi.
- **Secondary cluster**: Aurora cluster trong một AWS Region khác với primary cluster. Secondary cluster chỉ hỗ trợ hoạt động đọc.
- **Global database**: Global database chứa primary cluster và tối đa năm secondary cluster.

Với Aurora Global Database, bạn có thể xây dựng các ứng dụng phân tán toàn cầu mà không cần sự phức tạp của việc quản lý sao chép cơ sở dữ liệu.
