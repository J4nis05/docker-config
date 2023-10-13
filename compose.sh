#!/bin/bash

# Initialize variables
start_commands=()
stop_commands=()
restart_commands=()
all_services=(
  "admin.j4nis05.ch"
  "archiveTeamWarrior"
  "cryotea.com"
  "dashy"
  "gitea"
  "homeassistant"
  "j4nis05.ch"
  "jellyfin"
  "meshcentral"
  "minecraft"
  "nextcloud"
  "nginx"
  "pingvin"
  "podgrab"
  "portainer"
  "qbit"
  "satisfactory"
  "smb"
  "startpage"
  "synapse"
  "vaultwarden"
  "watchtower"
  "www.j4nis05.ch"
)


# Parse command line arguments
while getopts "u:d:r:" opt; do
  case ${opt} in
    u)
      start_commands+=("$OPTARG")
      ;;
    d)
      stop_commands+=("$OPTARG")
      ;;
    r)
      restart_commands+=("$OPTARG")
      ;;
    \?)
      echo "Invalid option: -$OPTARG" 1>&2
      ;;
    :)
      echo "Option -$OPTARG requires an argument" 1>&2
      ;;
  esac
done

# Function to perform actions on services
perform_action() {
    action=$1
    service=$2

    echo "$action $service"
    docker compose -f "/docker/$service/docker-compose.yml" $action -d
}

# Process the start commands
for command in "${start_commands[@]}"; do
    if [ "$command" == "all" ]; then
        for service in "${all_services[@]}"; do
            perform_action "up" "$service"
        done
    else
        perform_action "up" "$command"
    fi
done

# Process the stop commands
for command in "${stop_commands[@]}"; do
    if [ "$command" == "all" ]; then
        for service in "${all_services[@]}"; do
            perform_action "down" "$service"
        done
    else
        perform_action "down" "$command"
    fi
done

# Process the restart commands
for command in "${restart_commands[@]}"; do
    if [ "$command" == "all" ]; then
        for service in "${all_services[@]}"; do
            perform_action "restart" "$service"
        done
    else
        perform_action "restart" "$command"
    fi
done
