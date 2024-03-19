#!/bin/bash

# Navigate to the directory
cd /home/uptime-kuma

# Check if the container "uptime-kuma" already exists
if docker ps -a --format '{{.Names}}' | grep -q "^uptime-kuma$"; then
    echo "Container 'uptime-kuma' already exists. Starting the container."
    docker start uptime-kuma
else
    echo "Container 'uptime-kuma' not found. Running a new container."
    docker run --hostname uptime-kuma --restart always -v uptime-kuma:/app/data --network uptime-kuma --name uptime-kuma -d louislam/uptime-kuma:1
fi