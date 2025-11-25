#!/bin/bash
set -e

cd /home/ec2-user/service-b

echo "Building Docker image..."
docker build -t service-b:latest .

echo "Starting container..."
docker run -d \
  --name service-b \
  -p 8000:8000 \
  --restart unless-stopped \
  service-b:latest

echo "Container started successfully"
