#!/bin/bash

# Navigate to the directory
cd /home/uptime-kuma

# Check if the container "uptime-kuma" already exists
if docker ps -a --format '{{.Names}}' | grep -q "^uptime-kuma$"; then
    echo "Container 'uptime-kuma' already exists. Starting the container."
    docker start uptime-kuma
else
    echo "Container 'uptime-kuma' does not exist. Running a new container."
    docker run --hostname uptime-kuma -v uptime-kuma:/app/data --network nginx-rp --name uptime-kuma louislam/uptime-kuma:1
fi

