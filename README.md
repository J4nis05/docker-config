# docker-config
---
Backup of my Docker Compose Files.
Documentation of the Service Stacks is located in the [Docs](docs/README.md).


## Stacks
| No | Name             | Link                                                           |
| -- | ---------------- | -------------------------------------------------------------- |
| 01 | `arr`            | [docker-compose.yml](stacks/arr/docker-compose.yml)            |
| 02 | `gitea`          | [docker-compose.yml](stacks/gitea/docker-compose.yml)          |
| 03 | `mail`           | [docker-compose.yml](stacks/mail/docker-compose.yml)           |
| 04 | `matrix`         | [docker-compose.yml](stacks/matrix/docker-compose.yml)         |
| 05 | `mc-vanilla`     | [docker-compose.yml](stacks/mc-vanilla/docker-compose.yml)     |
| 06 | `nextcloud`      | [docker-compose.yml](stacks/nextcloud/docker-compose.yml)      |
| 07 | `pingvin`        | [docker-compose.yml](stacks/pingvin/docker-compose.yml)        |
| 08 | `portainer`      | [docker-compose.yml](stacks/portainer/docker-compose.yml)      |
| 09 | `satisfactory-1` | [docker-compose.yml](stacks/satisfactory-1/docker-compose.yml) |
| 10 | `satisfactory-2` | [docker-compose.yml](stacks/satisfactory-2/docker-compose.yml) |
| 11 | `satisfactory-3` | [docker-compose.yml](stacks/satisfactory-3/docker-compose.yml) |
| 12 | `services`       | [docker-compose.yml](stacks/services/docker-compose.yml)       |
| 13 | `tools`          | [docker-compose.yml](stacks/tools/docker-compose.yml)          |
| 13 | `ts5`            | [docker-compose.yml](stacks/ts5/docker-compose.yml)            |
| 14 | `vaultwarden`    | [docker-compose.yml](stacks/vaultwarden/docker-compose.yml)    |
| 15 | `web`            | [docker-compose.yml](stacks/web/docker-compose.yml)            |

### Arr (`arr`)
* [ ] qBittorrent:          [qbit.j4nis05.ch](https://qbit.j4nis05.ch)
* [ ] Jellyfin:             [jelly.j4nis05.ch](https://jelly.j4nis05.ch)
* [ ] Jellyseer:            [request.j4nis05.ch](https://request.j4nis05.ch)
* [ ] Podgrab:              [podgrab.j4nis05.ch](https://podgrab.j4nis05.ch)

### Games (`mc-vanilla`, `satisfactory-1/3`)
* [ ] Minecraft Vanilla
* [ ] Satisfactory 1
* [ ] Satisfactory 2
* [ ] Satisfactory 3

### Git (`gitea`)
* [ ] Gitea:                [git.j4nis05.ch](https://git.j4nis05.ch)
* [ ] Gitea Database

### Mail (`mail`)
* [ ] Mail Server:          [Guide](https://www.libe.net/docker-mailserver)

### Matrix (`matrix`)
* [ ] Element Client? https://cyberhost.uk/element-matrix-setup/
* [ ] Synapse Server:       [matrix.j4nis05.ch](https://matrix.j4nis05.ch)
* [ ] Synapse Database

### Nextcloud (`nextcloud`)
* [ ] Nextcloud:            [nas.j4nis05.ch](https://nas.j4nis05.ch)
* [ ] Nextcloud Database

### Personal Websites (`web`)
* [ ] Cryotea.com:          [cryotea.com](http://cryotea.com)
* [ ] Startpage:            [start.j4nis05.ch](https://start.j4nis05.ch)
* [ ] Personal Website:     [www.j4nis05.ch](https://www.j4nis05.ch)

### Pingvin Share (`pingvin`)
* [ ] Pingvin Share:        [send.j4nis05.ch](https://send.j4nis05.ch)

### Portainer (`portainer`)
* [ ] Portainer:            [docker.j4nis05.ch](https://docker.j4nis05.ch)

### Services (`services`)
* [ ] Nginx Proxy Manager:  [proxy.j4nis05.ch](https://proxy.j4nis05.ch)

### Teamspeak 5 Server (`ts5`)
* [ ] 

### Tools (`tools`)
* [ ] Archive Team Warrior: [warrior.j4nis05.ch](https://warrior.j4nis05.ch)

### Vaultwarden (`vaultwarden`)
* [ ] Vaultwarden:          [vault.j4nis05.ch](https://vault.j4nis05.ch)
* [ ] Vaultwarden Database


## To-Do
* [ ] Setup Synapse Server
* [ ] Setup Mail Server
* [ ] Setup Jellyseer
* [ ] Setup Teamspeak 5 Server
* [ ] Switch to `.env` files
* [ ] Switch to static file Paths
* [ ] Create new Stacks
  * [ ] `arr`
  * [X] `gitea`
  * [ ] `mail`
  * [ ] `matrix`
  * [X] `mc-vanilla`
  * [X] `nextcloud`
  * [X] `pingvin`
  * [X] `portainer`
  * [X] `satisfactory-1`
  * [X] `satisfactory-2`
  * [X] `satisfactory-3`
  * [X] `services`
  * [X] `tools`
  * [ ] `ts5`
  * [X] `vaultwarden`
  * [X] `web`


## Compose
> Structure and order of elements in a Compose file

```yaml
version: "3.8"
name: ""


services:
  example:
    image: 
    container_name: 
    restart: always
    depends_on:
      - 
    ports:
      - 
    volumes:
      - 
    environment:
      - 
    # Any Additional Instructions at the End
    # Single newline between services


networks:
  default:
    external: true
    name: proxynet


volumes:
  

```


## Switch from Volumes to filepaths
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
