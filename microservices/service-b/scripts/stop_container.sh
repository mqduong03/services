#!/bin/bash
set -e

echo "Stopping existing container..."
docker stop service-b 2>/dev/null || true
docker rm service-b 2>/dev/null || true

echo "Container stopped"
