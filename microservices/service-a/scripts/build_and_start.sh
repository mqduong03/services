#!/bin/bash
set -e

cd /home/ec2-user/service-a

echo "Building Docker image..."
docker build -t service-a:latest .

echo "Starting container..."
docker run -d \
  --name service-a \
  -p 8000:8000 \
  --restart unless-stopped \
  service-a:latest

echo "Container started successfully"
