Documentation
===

## Overview

| Status | Name             | Link                                           |
| :----: | ---------------- | ---------------------------------------------- |
| `🔴`  | `arr`            | [Service Stack Description](arr.md)            |
| `🔴`  | `gitea`          | [Service Stack Description](gitea.md)          |
| `🔴`  | `mail`           | [Service Stack Description](mail.md)           |
| `🔴`  | `matrix`         | [Service Stack Description](matrix.md)         |
| `🔴`  | `mc-vanilla`     | [Service Stack Description](mc-vanilla.md)     |
| `🔴`  | `nextcloud`      | [Service Stack Description](nextcloud.md)      |
| `🔴`  | `pingvin`        | [Service Stack Description](pingvin.md)        |
| `🔴`  | `portainer`      | [Service Stack Description](portainer.md)      |
| `🔴`  | `satisfactory-1` | [Service Stack Description](satisfactory-1.md) |
| `🔴`  | `satisfactory-2` | [Service Stack Description](satisfactory-2.md) |
| `🔴`  | `satisfactory-3` | [Service Stack Description](satisfactory-3.md) |
| `🔴`  | `services`       | [Service Stack Description](services.md)       |
| `🔴`  | `tools`          | [Service Stack Description](tools.md)          |
| `🔴`  | `ts5`            | [Service Stack Description](ts5.md)            |
| `🔴`  | `vaultwarden`    | [Service Stack Description](vaultwarden.md)    |
| `🔴`  | `web`            | [Service Stack Description](web.md)            |

**Legend**
* `🔴`: `Offline / Not Implemented`
* `🟠`: `Under Maintenance`
* `🟢`: `Online`


## Path Mappings
| No | Stack            | Container          | Host Path                                     | Container Path               |
| -- | ---------------- | ------------------ | --------------------------------------------- | ---------------------------- |
| 01 | `arr`            | qbittorrent        | /mnt/data/docker/arr/qbittorrent/config       | /config                      |
| 01 | `arr`            | qbittorrent        | /mnt/data/docker/arr/qbittorrent/theme        | /theme                       |
| 01 | `arr`            | qbittorrent        | /mnt/qbit                                     | /data                        |
| 01 | `arr`            | qbittorrent        | /etc/localtime                                | /etc/localtime               |
| 01 | `arr`            | jellyfin           | /mnt/data/docker/arr/jellyfin/config          | /config                      |
| 01 | `arr`            | jellyfin           | /mnt/data/docker/arr/jellyfin/cache           | /cache                       |
| 01 | `arr`            | jellyseer          | /mnt/data/docker/arr/jellyseer/`n/a`          | /`n/a`                       |
| 01 | `arr`            | radarr             | /mnt/data/docker/arr/radarr/`n/a`             | /`n/a`                       |
| 01 | `arr`            | sonarr             | /mnt/data/docker/arr/sonarr/`n/a`             | /`n/a`                       |
| 01 | `arr`            | podgrab            | /mnt/data/docker/arr/podgrab/config           | /config                      |
| 01 | `arr`            | podgrab            | /nas/media/audio/podcasts                     | /assets                      |
| 02 | `gitea`          | gitea              | /mnt/data/docker/gitea/gitea/data             | /data                        |
| 02 | `gitea`          | gitea              | /mnt/data/docker/gitea/gitea/config           | /etc/gitea                   |
| 02 | `gitea`          | gitea-db           | /mnt/data/docker/gitea/database/data          | /var/lib/mysql               |
| 03 | `mail`           | `n/a`              | `n/a`                                         | `n/a`                        |
| 04 | `matrix`         | element            | /mnt/data/docker/matrix/element/config.json   | /app/config.json             |
| 04 | `matrix`         | matrix             | /mnt/data/docker/matrix/matrix/data           | /data                        |
| 04 | `matrix`         | matrix-db          | /mnt/data/docker/matrix/database/data         | /var/lib/postgresql          |
| 05 | `mc-vanilla`     | mc-wohnzimmer      | /mnt/data/docker/games/vanilla                | /minecraft                   |
| 06 | `nextcloud`      | nextcloud          | /mnt/data/docker/nextcloud/nextcloud /data    | /var/www/html                |
| 06 | `nextcloud`      | nextcloud-db       | /mnt/data/docker/nextcloud/database/data      | //var/lib/mysql              |
| 07 | `pingvin`        | pingvin            | /mnt/data/docker/pingvin/pingvin/data         | /opt/app/backend/data        |
| 07 | `pingvin`        | pingvin            | /mnt/data/docker/pingvin/pingvin/images       | /opt/app/frontend/public/img |
| 08 | `portainer`      | portainer          | /var/run/docker.sock                          | /var/run/docker.sock         |
| 09 | `satisfactory-1` | satisfactory-1     | /mnt/data/docker/games/satisfactory1/config   | /config                      |
| 10 | `satisfactory-2` | satisfactory-2     | /mnt/data/docker/games/satisfactory2/config   | /config                      |
| 11 | `satisfactory-3` | satisfactory-3     | /mnt/data/docker/games/satisfactory3/config   | /config                      |
| 12 | `services`       | nginx              | /mnt/data/docker/services/nginx/data          | /data                        |
| 12 | `services`       | nginx              | /mnt/data/docker/services/nginx/letsencrypt   | /etc/letsencrypt             |
| 12 | `services`       | watchtower         | /var/run/docker.sock                          | /var/run/docker.sock         |
| 13 | `tools`          | archiveTeamWarrior | `none`                                        | `none`                       |
| 13 | `ts5`            | `n/a`              | `n/a`                                         | `n/a`                        |
| 14 | `vaultwarden`    | vaultwarden        | /mnt/data/docker/vaultwarden/vaultwarden/data | /data                        |
| 14 | `vaultwarden`    | vaultwarden-db     | /mnt/data/docker/vaultwarden/database/data    | /var/lib/mysql               |
| 15 | `web`            | cryotea.com        | `none`                                        | /home/node/app               |
| 15 | `web`            | startpage          | `none`                                        | /usr/share/nginx/html        |
| 15 | `web`            | www.j4nis05.ch     | `none`                                        | /app                         |


### Switch from Volumes to filepaths
| Volume                       | File Path                                 |
| ---------------------------- | ----------------------------------------- |
| `arr_qbit_config`            | `/mnt/data/docker/arr/qbittorrent/config` |
| `arr_qbit_theme`             | `/mnt/data/docker/arr/qbittorrent/theme`  |
| `media_jellyfin_cache`       | `/mnt/data/docker/arr/jellyfin/cache`     |
| `media_jellyfin_config`      | `/mnt/data/docker/arr/jellyfin/config`    |
| `media_podgrab_config`       | `/mnt/data/docker/arr/podgrab/config`     |
| `media_nextcloud_db_data`    | `/mnt/data/docker/nextcloud/database`     |
| `portainer_portainer_data`   | `/mnt/data/docker/portainer/data`         |
| `services_nginx_data`        | `/mnt/data/docker/nginx/data`             |
| `services_nginx_letsencrypt` | `/mnt/data/docker/nginx/letsencrypt`      |
| `tools_gitea_config`         | `/mnt/data/docker/gitea/config`           |
| `tools_gitea_data`           | `/mnt/data/docker/gitea/data`             |
| `tools_vaultwarden_data`     | `/mnt/data/docker/vaultwarden/data`       |


## Port Mappings
| No | Stack            | Container          | Host Port | Container Port |
| -- | ---------------- | ------------------ | --------- | -------------- |
| 01 | `arr`            | qbittorrent        | `none`    | 8080           |
| 01 | `arr`            | qbittorrent        | 6881      | 6881           |
| 01 | `arr`            | qbittorrent        | 6881/udp  | 6881/udp       |
| 01 | `arr`            | jellyfin           | `none`    | 8096           |
| 01 | `arr`            | jellyseer          | `n/a`     | `n/a`          |
| 01 | `arr`            | radarr             | `n/a`     | `n/a`          |
| 01 | `arr`            | sonarr             | `n/a`     | `n/a`          |
| 01 | `arr`            | podgrab            | `n/a`     | `n/a`          |
| 02 | `gitea`          | gitea              | `none`    | 3000           |
| 02 | `gitea`          | gitea-db           | `none`    | 3306           |
| 03 | `mail`           | `n/a`              | `n/a`     | `n/a`          |
| 04 | `matrix`         | element            | `none`    | 80             |
| 04 | `matrix`         | matrix             | `none`    | 8008           |
| 04 | `matrix`         | matrix-db          | `none`    | 5432           |
| 05 | `mc-vanilla`     | mc-wohnzimmer      | 25565     | 41340          |
| 05 | `mc-vanilla`     | mc-wohnzimmer      | 25575     | 25575          |
| 06 | `nextcloud`      | nextcloud          | `none`    | 80             |
| 06 | `nextcloud`      | nextcloud-db       | `none`    | 3306           |
| 07 | `pingvin`        | pingvin            | `none`    | 3000           |
| 08 | `portainer`      | portainer          | 9000      | 9000           |
| 09 | `satisfactory-1` | satisfactory-1     | 7777      | 7777           |
| 09 | `satisfactory-1` | satisfactory-1     | 15000     | 15000          |
| 09 | `satisfactory-1` | satisfactory-1     | 15777     | 15777          |
| 10 | `satisfactory-2` | satisfactory-2     | 7777      | 7777           |
| 10 | `satisfactory-2` | satisfactory-2     | 15000     | 15000          |
| 10 | `satisfactory-2` | satisfactory-2     | 15777     | 15777          |
| 11 | `satisfactory-3` | satisfactory-3     | 7777      | 7777           |
| 11 | `satisfactory-3` | satisfactory-3     | 15000     | 15000          |
| 11 | `satisfactory-3` | satisfactory-3     | 15777     | 15777          |
| 12 | `services`       | nginx              | 80        | 80             |
| 12 | `services`       | nginx              | 81        | 81             |
| 12 | `services`       | nginx              | 443       | 443            |
| 12 | `services`       | watchtower         | `none`    | `none`         |
| 13 | `tools`          | archiveTeamWarrior | `none`    | 8001           |
| 13 | `ts5`            | `n/a`              | `n/a`     | `n/a`          |
| 14 | `vaultwarden`    | vaultwarden        | `none`    | 80             |
| 14 | `vaultwarden`    | vaultwarden-db     | `none`    | 3306           |
| 15 | `web`            | cryotea.com        | `none`    | 8080           |
| 15 | `web`            | startpage          | `none`    | 80             |
| 15 | `web`            | www.j4nis05.ch     | `none`    | 3000           |
