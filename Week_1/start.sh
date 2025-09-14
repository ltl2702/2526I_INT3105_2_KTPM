#!/bin/bash

# Start SSH service
service ssh start

# Start VNC server cho user vncuser
su - vncuser -c "vncserver :1 -geometry 1280x800 -depth 24 -localhost no -xstartup /usr/bin/startxfce4"

# Log thông tin container
touch /var/log/container.log
echo "Container started successfully!" >> /var/log/container.log
echo "SSH is running on port 22" >> /var/log/container.log
echo "VNC server running on port 5901, password: 123456" >> /var/log/container.log

# Giữ container chạy
tail -f /var/log/container.log
