#!/bin/bash

# Set variables
REMOTE_USER="root"
REMOTE_SERVER="192.168.1.64"
SOURCE_DIR="/docker"
DESTINATION_DIR="/data/nyx/backup_$(date +%Y-%m-%d_%H-%M-%S)"

# Function to stop containers on the remote server
stop_containers() {
    ssh "$REMOTE_USER@$REMOTE_SERVER" "docker stop \$(docker ps -q)"
}

# Function to start containers on the remote server
start_containers() {
    ssh "$REMOTE_USER@$REMOTE_SERVER" "docker start \$(docker ps -aq)"
}

# Stop Docker containers on the remote server
stop_containers

# Perform the backup
rsync -avz --delete --include='/docker/ext/qbit/[]torrent/' --exclude='/docker/ext/*' --exclude='/docker/old' "$REMOTE_USER@$REMOTE_SERVER:$SOURCE_DIR" "$DESTINATION_DIR"

# Start Docker containers on the remote server
start_containers

# Keep the last 10 full backups
find /data/nyx -type d -name "backup_*" -printf '%T@ %p\n' | sort -n | head -n -10 | awk '{print $2}' | xargs rm -rf

# Set ownership and permissions for the backup folder
chown -R janis:janis /data/nyx
