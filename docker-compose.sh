#!/bin/bash

# Initialize variables
start_commands=()
stop_command=""

# Parse command line arguments
while getopts "u:d:" opt; do
  case ${opt} in
    u)
      start_commands+=("$OPTARG")
      ;;
    d)
      stop_command=$OPTARG
      ;;
    \?)
      echo "Invalid option: -$OPTARG" 1>&2
      ;;
    :)
      echo "Option -$OPTARG requires an argument" 1>&2
      ;;
  esac
done

# Process the start commands
for command in "${start_commands[@]}"; do
  case $command in
    cryotea.com)
      echo "Starting cryotea.com"
      docker compose -f /docker/cryotea.com/docker-compose.yml up -d
      ;;
    j4nis05.ch)
      echo "Starting j4nis05.ch"
      docker compose -f /docker/j4nis05.ch/docker-compose.yml up -d
      docker compose -f /docker/www.j4nis05.ch/docker-compose.yml up -d
      ;;
    admin.j4nis05.ch)
      echo "Starting admin.j4nis05.ch"
      docker compose -f /docker/admin.j4nis05.ch/docker-compose.yml up -d
      ;;
    startpage)
      echo "Starting startpage"
      docker compose -f /docker/startpage/docker-compose.yml up -d
      ;;
    jellyfin)
      echo "Starting jellyfin"
      docker compose -f /docker/jellyfin/docker-compose.yml up -d
      ;;
    podgrab)
      echo "Starting podgrab"
      docker compose -f /docker/podgrab/docker-compose.yml up -d
      ;;
    nextcloud)
      echo "Starting nextcloud"
      docker compose -f /docker/nextcloud/docker-compose.yml up -d
      ;;
    meshcentral)
      echo "Starting meshcentral"
      docker compose -f /docker/meshcentral/docker-compose.yml up -d
      ;;
    gitea)
      echo "Starting gitea"
      docker compose -f /docker/gitea/docker-compose.yml up -d
      ;;
    vaultwarden)
      echo "Starting vaultwarden"
      docker compose -f /docker/vaultwarden/docker-compose.yml up -d
      ;;
    synapse)
      echo "Starting synapse"
      docker compose -f /docker/synapse/docker-compose.yml up -d
      ;;
    nginx)
      echo "Starting nginx"
      docker compose -f /docker/nginx/docker-compose.yml up -d
      ;;
    watchtower)
      echo "Starting watchtower"
      docker compose -f /docker/watchtower/docker-compose.yml up -d
      ;;
    minecraft)
      echo "Starting minecraft"
      docker compose -f /docker/minecraft/docker-compose.yml up -d
      ;;
    portainer)
      echo "Starting portainer"
      docker compose -f /docker/portainer/docker-compose.yml up -d
      ;;
    all)
      echo "Starting all Services"
      docker compose -f /docker/cryotea.com/docker-compose.yml up -d
      docker compose -f /docker/j4nis05.ch/docker-compose.yml up -d
      docker compose -f /docker/www.j4nis05.ch/docker-compose.yml up -d
      docker compose -f /docker/admin.j4nis05.ch/docker-compose.yml up -d
      docker compose -f /docker/startpage/docker-compose.yml up -d
      docker compose -f /docker/jellyfin/docker-compose.yml up -d
      docker compose -f /docker/podgrab/docker-compose.yml up -d
      docker compose -f /docker/nextcloud/docker-compose.yml up -d
      docker compose -f /docker/meshcentral/docker-compose.yml up -d
      docker compose -f /docker/gitea/docker-compose.yml up -d
      docker compose -f /docker/vaultwarden/docker-compose.yml up -d
      docker compose -f /docker/synapse/docker-compose.yml up -d
      docker compose -f /docker/nginx/docker-compose.yml up -d
      docker compose -f /docker/watchtower/docker-compose.yml up -d
      docker compose -f /docker/minecraft/docker-compose.yml up -d
      docker compose -f /docker/portainer/docker-compose.yml up -d
      ;;
    *)
      echo "Unknown start option: $command"
      ;;
  esac
done

# Process the stop command
if [[ $stop_command != "" ]]; then
  case $stop_command in
    cryotea.com)
      echo "Stopping cryotea.com"
      docker compose -f /docker/cryotea.com/docker-compose.yml down
      ;;
    j4nis05.ch)
      echo "Stopping j4nis05.ch"
      docker compose -f /docker/j4nis05.ch/docker-compose.yml down
      docker compose -f /docker/www.j4nis05.ch/docker-compose.yml down
      ;;
    admin.j4nis05.ch)
      echo "Stopping admin.j4nis05.ch"
      docker compose -f /docker/admin.j4nis05.ch/docker-compose.yml down
      ;;
    startpage)
      echo "Stopping startpage"
      docker compose -f /docker/startpage/docker-compose.yml down
      ;;
    jellyfin)
      echo "Stopping jellyfin"
      docker compose -f /docker/jellyfin/docker-compose.yml down
      ;;
    podgrab)
      echo "Stopping podgrab"
      docker compose -f /docker/podgrab/docker-compose.yml down
      ;;
    nextcloud)
      echo "Stopping nextcloud"
      docker compose -f /docker/nextcloud/docker-compose.yml down
      ;;
    meshcentral)
      echo "Stopping meshcentral"
      docker compose -f /docker/meshcentral/docker-compose.yml down
      ;;
    gitea)
      echo "Stopping gitea"
      docker compose -f /docker/gitea/docker-compose.yml down
      ;;
    vaultwarden)
      echo "Stopping vaultwarden"
      docker compose -f /docker/vaultwarden/docker-compose.yml down
      ;;
    synapse)
      echo "Stopping synapse"
      docker compose -f /docker/synapse/docker-compose.yml down
      ;;
    nginx)
      echo "Stopping nginx"
      docker compose -f /docker/nginx/docker-compose.yml down
      ;;
    watchtower)
      echo "Stopping watchtower"
      docker compose -f /docker/watchtower/docker-compose.yml down
      ;;
    minecraft)
      echo "Stopping minecraft"
      docker compose -f /docker/minecraft/docker-compose.yml down
      ;;
    portainer)
      echo "Stopping portainer"
      docker compose -f /docker/portainer/docker-compose.yml down
      ;;
    all)
      echo "Stopping all Services"
      docker compose -f /docker/cryotea.com/docker-compose.yml down
      docker compose -f /docker/j4nis05.ch/docker-compose.yml down
      docker compose -f /docker/www.j4nis05.ch/docker-compose.yml down
      docker compose -f /docker/admin.j4nis05.ch/docker-compose.yml down
      docker compose -f /docker/startpage/docker-compose.yml down
      docker compose -f /docker/jellyfin/docker-compose.yml down
      docker compose -f /docker/podgrab/docker-compose.yml down
      docker compose -f /docker/nextcloud/docker-compose.yml down
      docker compose -f /docker/meshcentral/docker-compose.yml down
      docker compose -f /docker/gitea/docker-compose.yml down
      docker compose -f /docker/vaultwarden/docker-compose.yml down
      docker compose -f /docker/synapse/docker-compose.yml down
      docker compose -f /docker/nginx/docker-compose.yml down
      docker compose -f /docker/watchtower/docker-compose.yml down
      docker compose -f /docker/minecraft/docker-compose.yml down
      docker compose -f /docker/portainer/docker-compose.yml down
      ;;
    *)
      echo "Unknown stop option: $stop_command"
      ;;
  esac
fi
