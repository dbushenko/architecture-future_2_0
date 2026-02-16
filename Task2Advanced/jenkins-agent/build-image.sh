#!/bin/bash
set -e
echo "Building Jenkins agent Docker image with Terraform..."
docker build -t jenkins-agent-yc:latest .
echo "Docker image jenkins-agent-yc:latest built successfully!"
docker run --rm jenkins-agent-yc:latest terraform version
