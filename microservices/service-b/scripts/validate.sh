#!/bin/bash
set -e

echo "Validating service..."
sleep 5

# Check if container is running
if docker ps | grep -q service-b; then
    echo "Container is running"
    
    # Check if service responds
    if curl -f http://localhost:8001 > /dev/null 2>&1; then
        echo "Service is responding"
        exit 0
    else
        echo "Service is not responding"
        exit 1
    fi
else
    echo "Container is not running"
    exit 1
fi
