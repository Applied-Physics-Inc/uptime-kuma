@echo off

docker run --hostname=uptime-kuma --env=PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin --env=NODE_VERSION=18.18.2 --env=YARN_VERSION=1.22.19 --env=UPTIME_KUMA_IS_CONTAINER=1 --volume=/app/data --workdir=/app --network=nginx-rp -p 3007:3001 --runtime=runc --name uptime-kuma -d louislam/uptime-kuma:1