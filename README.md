# docker-config

---

* Backup of my Docker Compose Files.

## Stacks

### Archive

* `TBD`

### Arr (`arr`)

* [X] qBittorrent:          [qbit.j4nis05.ch](https://qbit.j4nis05.ch)
* [X] Jellyfin:             [jelly.j4nis05.ch](https://jelly.j4nis05.ch)
* [X] Jellyseer:            [request.j4nis05.ch](https://request.j4nis05.ch)
* [X] Radarr:               [radarr.j4nis05.ch](https://radarr.j4nis05.ch)
* [X] Sonarr:               [sonarr.j4nis05.ch](https://sonarr.j4nis05.ch)
* [X] Prowlarr:             [prowlarr.j4nis05.ch](https://prowlarr.j4nis05.ch)
* [X] Podgrab:              [podgrab.j4nis05.ch](https://podgrab.j4nis05.ch)

### Games (`mc-vanilla`, `mc-atm9`, `satisfactory-1/3`)

* [X] Minecraft Vanilla
* [X] Minecraft All The Mods 9
* [X] Satisfactory 1
* [X] Satisfactory 2
* [X] Satisfactory 3

### Git (`gitea`)

* [X] Gitea:                [git.j4nis05.ch](https://git.j4nis05.ch)
* [X] Gitea Database

### Matrix (`matrix`)

* [X] Element Client:       [element.j4nis05.ch](https://element.j4nis05.ch)
* [X] Synapse Server:       [matrix.j4nis05.ch](https://matrix.j4nis05.ch)
* [X] Synapse Database

### Nextcloud (`nextcloud`)

* [X] Nextcloud:            [nas.j4nis05.ch](https://nas.j4nis05.ch)
* [X] Nextcloud Database

### Personal Websites (`web`)

* [X] Apache Webserver:     [admin.j4nis05.ch](https://admin.j4nis05.ch)
* [X] Cryotea.com:          [cryotea.com](http://cryotea.com)
* [X] Startpage:            [start.j4nis05.ch](https://start.j4nis05.ch)
* [X] Personal Website:     [www.j4nis05.ch](https://www.j4nis05.ch)

### Pingvin Share (`pingvin`)

* [X] Pingvin Share:        [send.j4nis05.ch](https://send.j4nis05.ch)

### Portainer (`portainer`)

* [X] Portainer:            [docker.j4nis05.ch](https://docker.j4nis05.ch)

### Services (`services`)

* [X] Nginx Proxy Manager:  [proxy.j4nis05.ch](https://proxy.j4nis05.ch)

### Tools (`tools`)

* [X] Archive Team Warrior: [warrior.j4nis05.ch](https://warrior.j4nis05.ch)

### Vaultwarden (`vaultwarden`)

* [X] Vaultwarden:          [vault.j4nis05.ch](https://vault.j4nis05.ch)
* [X] Vaultwarden Database

### Wiki (`otterwiki`)

* [X] Otterwiki:            [wiki.j4nis05.ch](https://wiki.j4nis05.ch)

### Table View

| No | Name             | Link                                                       |
| -- | ---------------- | ---------------------------------------------------------- |
| 01 | `archive`        | `TBD`                                                      |
| 02 | `arr`            | [Docker Compose](stacks/arr/docker-compose.yml)            |
| 03 | `gitea`          | [Docker Compose](stacks/gitea/docker-compose.yml)          |
| 04 | `matrix`         | [Docker Compose](stacks/matrix/docker-compose.yml)         |
| 05 | `mc-atm9`        | [Docker Compose](stacks/mc-atm9/docker-compose.yml)        |
| 06 | `mc-vanilla`     | [Docker Compose](stacks/mc-vanilla/docker-compose.yml)     |
| 07 | `nextcloud`      | [Docker Compose](stacks/nextcloud/docker-compose.yml)      |
| 08 | `otterwiki`      | [Docker Compose](stacks/otterwiki/docker-compose.yml)      |
| 09 | `pingvin`        | [Docker Compose](stacks/pingvin/docker-compose.yml)        |
| 10 | `portainer`      | [Docker Compose](stacks/portainer/docker-compose.yml)      |
| 11 | `satisfactory-1` | [Docker Compose](stacks/satisfactory-1/docker-compose.yml) |
| 12 | `satisfactory-2` | [Docker Compose](stacks/satisfactory-2/docker-compose.yml) |
| 13 | `satisfactory-3` | [Docker Compose](stacks/satisfactory-3/docker-compose.yml) |
| 14 | `services`       | [Docker Compose](stacks/services/docker-compose.yml)       |
| 15 | `terraria-nuke`  | [Docker Compose](stacks/terraria-nuke/docker-compose.yml)  |
| 16 | `tools`          | [Docker Compose](stacks/tools/docker-compose.yml)          |
| 17 | `vaultwarden`    | [Docker Compose](stacks/vaultwarden/docker-compose.yml)    |
| 18 | `web`            | [Docker Compose](stacks/web/docker-compose.yml)            |

## Compose

> Structure and order of elements in a Compose file

```yaml
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

```
