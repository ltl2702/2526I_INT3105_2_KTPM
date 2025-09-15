### 1. Build và khởi động
```bash
docker compose build        # Build image từ Dockerfile
docker compose up -d        # Chạy container ở background
```

### 2. Kiểm tra trạng thái
```bash
docker ps                   # Xem container đang chạy
docker logs -f ubuntu-vnc-desktop  # Xem logs realtime
```

### 3. Kết nối SSH
```bash
ssh vncuser@localhost -p 2222       # Kết nối SSH
ssh-keygen -R [localhost]:2222      # Xóa SSH key cũ (nếu có lỗi)
```
### 4. Tải VNC
- Dùng VNC viewer kết nối `localhost:5901`
- Mật khẩu: `123456`
