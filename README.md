# docker-config
---
Backup of my Docker Compose Files


## Stacks
| No | Name             | Link                                                           |
| -- | ---------------- | -------------------------------------------------------------- |
| 01 | `arr`            | [docker-compose.yml](stacks/arr/docker-compose.yml)            |
| 02 | `mc-atm9`        | [docker-compose.yml](stacks/mc-atm9/docker-compose.yml)        |
| 03 | `mc-vanilla`     | [docker-compose.yml](stacks/mc-vanilla/docker-compose.yml)     |
| 04 | `satisfactory-1` | [docker-compose.yml](stacks/satisfactory-1/docker-compose.yml) |
| 05 | `satisfactory-2` | [docker-compose.yml](stacks/satisfactory-2/docker-compose.yml) |
| 06 | `satisfactory-3` | [docker-compose.yml](stacks/satisfactory-3/docker-compose.yml) |
| 07 | `mail`           | [docker-compose.yml](stacks/mail/docker-compose.yml)           |
| 08 | `matrix`         | [docker-compose.yml](stacks/matrix/docker-compose.yml)         |
| 09 | `nextcloud`      | [docker-compose.yml](stacks/nextcloud/docker-compose.yml)      |
| 10 | `web`            | [docker-compose.yml](stacks/web/docker-compose.yml)            |
| 11 | `portainer`      | [docker-compose.yml](stacks/portainer/docker-compose.yml)      |
| 12 | `services`       | [docker-compose.yml](stacks/services/docker-compose.yml)       |
| 13 | `tools`          | [docker-compose.yml](stacks/tools/docker-compose.yml)          |

### Arr (`arr`)
- [ ] qBittorrent           [qbit.j4nis05.ch](https://qbit.j4nis05.ch)
- [ ] Jellyfin              [jelly.j4nis05.ch](https://jelly.j4nis05.ch)
- [ ] Jellyseer

### Games (`mc-atm9`, `mc-vanilla`, `satisfactory-1/3`)
- [ ] Minecraft Vanilla
- [ ] Minecraft ATM9
- [ ] Satisfactory 1
- [ ] Satisfactory 2
- [ ] Satisfactory 3

### Mail (`mail`)
- [ ] Mail Server           Guide: https://www.libe.net/docker-mailserver

### Matrix (`matrix`)
- [ ] Synapse Server        [matrix.j4nis05.ch](https://matrix.j4nis05.ch)
- [ ] Synapse Database

### Nextcloud (`nextcloud`)
- [ ] Nextcloud             [nas.j4nis05.ch](https://nas.j4nis05.ch)
- [ ] Nextcloud Database

### Personal Websites (`web`)
- [ ] File Backend          [admin.j4nis05.ch](https://admin.j4nis05.ch)
- [ ] Cryotea.com:          [cryotea.com](http://cryotea.com)
- [ ] Startpage:            [start.j4nis05.ch](https://start.j4nis05.ch)
- [ ] Redirect to WWW:      [j4nis05.ch](https://j4nis05.ch)
- [ ] WWW.J4nis05.ch:       [www.j4nis05.ch](https://www.j4nis05.ch)

### Portainer (`portainer`)
- [ ] Portainer             [docker.j4nis05.ch](https://docker.j4nis05.ch)

### Services (`services`)
- [ ] Nginx Proxy Manager   [proxy.j4nis05.ch](https://proxy.j4nis05.ch)

### Tools (`tools`)
- [ ] Gitea                 [git.j4nis05.ch](https://git.j4nis05.ch)
- [ ] Vaultwarden           [vault.j4nis05.ch](https://vault.j4nis05.ch)
- [ ] Pingvin Share         [send.j4nis05.ch](https://send.j4nis05.ch)
- [ ] Docker Registry       [registry.j4nis05.ch](https://registry.j4nis05.ch)
- [ ] Archive Team Warrior  [warrior.j4nis05.ch](https://warrior.j4nis05.ch)


## To-Do
* Setup Synapse Server
* Setup Mail Server
* Setup Jellyseer


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