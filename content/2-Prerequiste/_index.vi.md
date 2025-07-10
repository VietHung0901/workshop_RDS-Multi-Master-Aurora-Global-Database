---
title : "Các bước chuẩn bị"
date :  "2025-07-10" 
weight : 2 
chapter : false
pre : " <b> 2. </b> "
---

{{% notice info %}}
Bạn cần tạo sẵn cơ sở hạ tầng VPC và các EC2 instance trong hai AWS region khác nhau để thực hiện bài thực hành này. Chúng ta sẽ sử dụng ap-southeast-1 (Singapore) làm primary region và us-west-1 (N.Virginia) làm secondary region.
{{% /notice %}}

Để tìm hiểu cách tạo các EC2 instance và VPC với public/private subnet các bạn có thể tham khảo bài lab:
  - [Giới thiệu về Amazon EC2](https://000004.awsstudygroup.com/vi/)
  - [Làm việc với Amazon VPC](https://000003.awsstudygroup.com/vi/)

Trong phần chuẩn bị này, chúng ta sẽ tạo cơ sở hạ tầng cần thiết cho Aurora Global Database bao gồm:
- VPC và các thành phần mạng trong cả hai vùng
- EC2 instance để triển khai ứng dụng
- Security group cho database và ứng dụng

### Nội dung
  - [Chuẩn bị VPC](2.1-createec2/)
  - [EC2 Instance](2.1-createec2/)

