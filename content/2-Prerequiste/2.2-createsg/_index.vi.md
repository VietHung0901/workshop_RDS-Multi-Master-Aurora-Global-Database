---
title: "Tạo Security Group"
date: "2025-07-10"
weight: 2
chapter: false
pre: "<b>2.2 </b>"
---

## Tạo Security Group

Trong phần này, bạn sẽ tạo **2 Security Group** để bảo vệ và phân quyền truy cập cho các EC2 instance: **Bastion Host** và **Application Server** thuộc vùng Primary.

---

### 🔐 1. Security Group: `workshop-sg-bastion-primary`

#### ✅ Mục đích:
- Cho phép SSH vào EC2 Bastion từ mọi địa chỉ IPv4.
- Cho phép ping ra internet.

#### 🔧 Cấu hình Inbound:
| Type               | Protocol | Port Range | Source         |
|--------------------|----------|-------------|----------------|
| SSH                | TCP      | 22          | Anywhere IPv4 (`0.0.0.0/0`) |
| Custom ICMP - IPv4 | ALL      | ALL         | Anywhere IPv4 (`0.0.0.0/0`) |

#### 🔧 Outbound:
- **Giữ nguyên mặc định**: Allow all outbound traffic.

📸 *Minh họa cấu hình Security Group:*

![Security Group Bastion](/images/2.prerequisite/07-createsg.png)

---

### 🔐 2. Security Group: `workshop-sg-server-primary`

#### ✅ Mục đích:
- Chỉ cho phép SSH từ EC2 Bastion (có Security Group là `workshop-sg-bastion-primary`).

#### 🔧 Cấu hình Inbound:
| Type | Protocol | Port Range | Source                         |
|------|----------|-------------|--------------------------------|
| SSH  | TCP      | 22          | Security group: `workshop-sg-bastion-primary` |

> 📌 *Lưu ý*: Đây là cách cấu hình **chỉ cho phép SSH nội bộ từ Bastion**, không mở ra internet.

#### 🔧 Outbound:
- **Giữ nguyên mặc định**: Allow all outbound traffic.

📸 *Minh họa cấu hình Security Group:*

![Security Group Server](/images/2.prerequisite/08-createsg.png)

---

✅ **Hoàn tất**: Bạn đã tạo xong Security Group cho Bastion và Server, sẵn sàng để cấu hình EC2 instance trong bước tiếp theo.
