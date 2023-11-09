#!/bin/bash

# Set variables
REMOTE_USER="root"
REMOTE_SERVER="192.168.1.64"
SOURCE_DIR="/docker/stack-games/backups/*"
DESTINATION_DIR="/data/games/minecraft/backup_$(date +%Y-%m-%d_%H-%M-%S)"

# Perform the backup
rsync -avz --delete $REMOTE_USER@$REMOTE_SERVER:$SOURCE_DIR $DESTINATION_DIR

# Remove Backups
ssh $REMOTE_USER@$REMOTE_SERVER 'bash -s' <<EOF
rm -f /docker/stack-games/backups/*
EOF

# Set ownership and permissions for the backup folder
chown -R janis:janis /data/games