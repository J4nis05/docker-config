# docker-config
---
Backup of my Docker Compose Files


## Stacks
| Name             | Link                                                |
| ---------------- | --------------------------------------------------- |
| `arr`            | [Compose](stacks/arr/docker-compose.yml)            |
| `mc-atm9`        | [Compose](stacks/mc-atm9/docker-compose.yml)        |
| `mc-vanilla`     | [Compose](stacks/mc-vanilla/docker-compose.yml)     |
| `satisfactory-1` | [Compose](stacks/satisfactory-1/docker-compose.yml) |
| `satisfactory-2` | [Compose](stacks/satisfactory-2/docker-compose.yml) |
| `mail`           | [Compose](stacks/mail/docker-compose.yml)           |
| `matrix`         | [Compose](stacks/matrix/docker-compose.yml)         |
| `nextcloud`      | [Compose](stacks/nextcloud/docker-compose.yml)      |
| `web`            | [Compose](stacks/web/docker-compose.yml)            |
| `portainer`      | [Compose](stacks/portainer/docker-compose.yml)      |
| `services`       | [Compose](stacks/services/docker-compose.yml)       |
| `tools`          | [Compose](stacks/tools/docker-compose.yml)          |

### Arr (`arr`)
- [X] qBittorrent           [qbit.j4nis05.ch](https://qbit.j4nis05.ch)
- [X] Jellyfin              [jelly.j4nis05.ch](https://jelly.j4nis05.ch)
- [ ] Jellyseer

### Games (`mc-atm9`, `mc-vanilla`, `satisfactory-1`, `satisfactory-2`)
- [X] Minecraft Vanilla
- [X] Minecraft ATM9
- [ ] Satisfactory 1
- [X] Satisfactory 2

### Mail (`mail`)
- [ ] Mail Server           Guide: https://www.libe.net/docker-mailserver

### Matrix (`matrix`)
- [ ] Synapse Server        [matrix.j4nis05.ch](https://matrix.j4nis05.ch)
- [ ] Synapse Database

### Nextcloud (`nextcloud`)
- [X] Nextcloud             [nas.j4nis05.ch](https://nas.j4nis05.ch)
- [X] Nextcloud Database

### Personal Websites (`web`)
- [X] File Backend          [admin.j4nis05.ch](https://admin.j4nis05.ch)
- [X] Cryotea.com:          [cryotea.com](http://cryotea.com)
- [X] Startpage:            [start.j4nis05.ch](https://start.j4nis05.ch)
- [X] Redirect to WWW:      [j4nis05.ch](https://j4nis05.ch)
- [X] WWW.J4nis05.ch:       [www.j4nis05.ch](https://www.j4nis05.ch)

### Portainer (`portainer`)
- [X] Portainer             [docker.j4nis05.ch](https://docker.j4nis05.ch)

### Services (`services`)
- [X] Nginx Proxy Manager   [proxy.j4nis05.ch](https://proxy.j4nis05.ch)

### Tools (`tools`)
- [X] Gitea                 [git.j4nis05.ch](https://git.j4nis05.ch)
- [X] Vaultwarden           [vault.j4nis05.ch](https://vault.j4nis05.ch)
- [X] Pingvin Share         [send.j4nis05.ch](https://send.j4nis05.ch)
- [X] Docker Registry       [registry.j4nis05.ch](https://registry.j4nis05.ch)
- [X] Archive Team Warrior  [warrior.j4nis05.ch](https://warrior.j4nis05.ch)


## To-Do
* Setup Synapse Server
* Setup Mail Server
* Setup Jellyseer
* Remove `Podgrab`, `Homarr`, `Watchtower`


## Compose
> Structure and order of elements in a Compose file

```yaml
version: "3.8"

services:
  example:
    image: 
    container_name: 
    restart: always
    ports:
      - 
    volumes:
      - 
    environment:
      - 
    # Any Additional Instructions at the End

networks:
  default:
    external: true
    name: proxynet

volumes:

```