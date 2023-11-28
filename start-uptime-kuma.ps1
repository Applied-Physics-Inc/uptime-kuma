Set-Location 'C:\Users\bdath\OneDrive\Desktop\AP Work\uptime-kuma\'

docker run --hostname uptime-kuma -p 3007:3001 -v uptime-kuma:/app/data --network nginx-rp --name uptime-kuma louislam/uptime-kuma:1