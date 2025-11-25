#!/bin/bash
set -e

echo "Stopping existing container..."
docker stop service-a 2>/dev/null || true
docker rm service-a 2>/dev/null || true

echo "Container stopped"
