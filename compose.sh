#!/bin/bash

# Initialize variables
declare -A services=(
    ["stack-arr"]="/docker/stack-arr/docker-compose.yml"
    ["stack-data"]="/docker/stack-data/docker-compose.yml"
    ["stack-games"]="/docker/stack-games/docker-compose.yml"
    ["stack-media"]="/docker/stack-media/docker-compose.yml"
    ["stack-services"]="/docker/stack-services/docker-compose.yml"
    ["stack-tools"]="/docker/stack-tools/docker-compose.yml"
    ["stack-web"]="/docker/stack-web/docker-compose.yml"
)


# List of all available services
all_services=(
    "stack-arr"
    "stack-data"
    "stack-games"
    "stack-media"
    "stack-services"
    "stack-tools"
    "stack-web"         
)


# Define functions for actions

# Function to start a service
start_service() {
    service=$1                                    # Get Service Name
    compose_file=$2                               # Get Compose File Path
    echo "Starting $service"                      # Print Start Message
    docker compose -f $compose_file up -d         # Start the service in detached mode
}

# Function to stop a service
stop_service() {
    service=$1
    compose_file=$2
    echo "Stopping $service"
    docker compose -f $compose_file down
}

# Function to restart a service
restart_service() {
    service=$1
    compose_file=$2
    echo "Restarting $service"
    docker compose -f $compose_file restart
}

# Parse command line arguments
while getopts "u:d:r:" opt; do
    case ${opt} in
        u)
            action="start"
            services["start"]=$OPTARG
            ;;
        d)
            action="stop"
            services["stop"]=$OPTARG
            ;;
        r)
            action="restart"
            services["restart"]=$OPTARG
            ;;
        \?)
            echo "Invalid option: -$OPTARG" 1>&2
            ;;
        :)
            echo "Option -$OPTARG requires an argument" 1>&2
            ;;
    esac
done

# Process the actions
for action in "${!services[@]}"; do
    for service in ${services[$action]}; do
        case $action in
            start)
                start_service $action $service
                ;;
            stop)
                stop_service $action $service
                ;;
            restart)
                restart_service $action $service
                ;;
        esac
    done
done

# Process the "all" option

# Start, stop, or restart all services defined in the `all_services` array
if [[ ${#services["start"]} -ne 0 ]]; then        # If there are services to start
    for service in "${all_services[@]}"; do       # Loop through all services in the all_services array
        compose_file="${services[$service]}"      # Get the Docker Compose file path for the current service
        if [ ! -z "$compose_file" ]; then         # If the Docker Compose file path is not empty
            start_service $service $compose_file  # Start the service using the defined function
        fi
    done
fi

if [[ ${#services["stop"]} -ne 0 ]]; then
    for service in "${all_services[@]}"; do
        compose_file="${services[$service]}"
        if [ ! -z "$compose_file" ]; then
            stop_service $service $compose_file
        fi
    done
fi

if [[ ${#services["restart"]} -ne 0 ]]; then
    for service in "${all_services[@]}"; do
        compose_file="${services[$service]}"
        if [ ! -z "$compose_file" ]; then
            restart_service $service $compose_file
        fi
    done
fi
