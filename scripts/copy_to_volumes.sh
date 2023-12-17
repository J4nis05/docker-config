#!/bin/bash

# Set the paths to copy from and volumes
COPY_FROM=(
  "/docker/stack-chat/data/synapse"
  "/docker/stack-chat/data/synapse_db"
  "/docker/stack-media/data/jellyfin/config"
  "/docker/stack-media/data/jellyfin/cache"
  "/docker/stack-media/data/nextcloud-db"
  "/docker/stack-media/data/podgrab"
  "/docker/stack-services/data/data"
  "/docker/stack-services/data/letsencrypt"
  "/docker/stack-services/data/portainer"
  "/docker/stack-tools/data/gitea/data"
  "/docker/stack-tools/data/gitea/config"
  "/docker/stack-tools/data/vaultwarden"
  "/docker/stack-web/data/admin.j4nis05.ch/html"
)

VOLUMES=(
  "synapse_synapse_data"
  "synapse_synapse_db_data"
  "media_jellyfin_config"
  "media_jellyfin_cache"
  "media_nextcloud_db_data"
  "media_podgrab_config"
  "services_nginx_data"
  "services_nginx_letsencrypt"
  "portainer_portainer_data"
  "tools_gitea_data"
  "tools_gitea_config"
  "tools_vaultwarden_data"
  "web_admin_j4nis05_ch_html"
)

# Function to copy data to Docker volumes
copy_to_volume() {
  docker run --rm \
    -v $1:/source \
    -v $2:/destination \
    alpine ash -c "cp -r /source/. /destination/"
}

# Loop through the paths and volumes to copy data
for ((i=0; i<${#COPY_FROM[@]}; i++)); do
  copy_to_volume ${COPY_FROM[$i]} ${VOLUMES[$i]}
done