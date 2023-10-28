#!/bin/bash

# Set variables
REMOTE_USER="root"
REMOTE_SERVER="192.168.1.64"
SOURCE_DIR="/docker"
DESTINATION_DIR="/data/nyx/backup_$(date +%Y-%m-%d_%H-%M-%S)"

# Stop Docker services on the remote server
ssh $REMOTE_USER@$REMOTE_SERVER 'bash -s' <<EOF
docker compose -f /docker/stack-arr/docker-compose.yml down
docker compose -f /docker/stack-data/docker-compose.yml down
docker compose -f /docker/stack-games/docker-compose.yml down
docker compose -f /docker/stack-media/docker-compose.yml down
docker compose -f /docker/stack-services/docker-compose.yml down
docker compose -f /docker/stack-tools/docker-compose.yml down
docker compose -f /docker/stack-web/docker-compose.yml down
EOF

# Perform the backup
rsync -avz --delete $REMOTE_USER@$REMOTE_SERVER:$SOURCE_DIR $DESTINATION_DIR

# Start Docker services on the remote server
ssh $REMOTE_USER@$REMOTE_SERVER 'bash -s' <<EOF
docker compose -f /docker/stack-arr/docker-compose.yml up -d
docker compose -f /docker/stack-data/docker-compose.yml up -d
docker compose -f /docker/stack-games/docker-compose.yml up -d
docker compose -f /docker/stack-media/docker-compose.yml up -d
docker compose -f /docker/stack-services/docker-compose.yml up -d
docker compose -f /docker/stack-tools/docker-compose.yml up -d
docker compose -f /docker/stack-web/docker-compose.yml up -d
EOF

# Keep the last two full backups
find /data/nyx -type d -name "backup_*" -printf '%T@ %p\n' | sort -n | head -n -2 | awk '{print $2}' | xargs rm -rf

# Set ownership and permissions for the backup folder
chown -R janis:janis /data/nyx