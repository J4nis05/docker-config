# docker-config
---
* Backup of my Docker Compose Files.
* Documentation of the Service Stacks is located in the [Docs](docs/README.md).
* Tasks are in [TODO](TODO.md)


## Stacks
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
* [ ] Element Client:       [element.j4nis05.ch](https://element.j4nis05.ch)
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

### Table View
| No | Name             | Link                                                       |
| -- | ---------------- | ---------------------------------------------------------- |
| 01 | `arr`            | [Docker Compose](stacks/arr/docker-compose.yml)            |
| 02 | `gitea`          | [Docker Compose](stacks/gitea/docker-compose.yml)          |
| 03 | `mail`           | [Docker Compose](stacks/mail/docker-compose.yml)           |
| 04 | `matrix`         | [Docker Compose](stacks/matrix/docker-compose.yml)         |
| 05 | `mc-vanilla`     | [Docker Compose](stacks/mc-vanilla/docker-compose.yml)     |
| 06 | `nextcloud`      | [Docker Compose](stacks/nextcloud/docker-compose.yml)      |
| 07 | `pingvin`        | [Docker Compose](stacks/pingvin/docker-compose.yml)        |
| 08 | `portainer`      | [Docker Compose](stacks/portainer/docker-compose.yml)      |
| 09 | `satisfactory-1` | [Docker Compose](stacks/satisfactory-1/docker-compose.yml) |
| 10 | `satisfactory-2` | [Docker Compose](stacks/satisfactory-2/docker-compose.yml) |
| 11 | `satisfactory-3` | [Docker Compose](stacks/satisfactory-3/docker-compose.yml) |
| 12 | `services`       | [Docker Compose](stacks/services/docker-compose.yml)       |
| 13 | `tools`          | [Docker Compose](stacks/tools/docker-compose.yml)          |
| 13 | `ts5`            | [Docker Compose](stacks/ts5/docker-compose.yml)            |
| 14 | `vaultwarden`    | [Docker Compose](stacks/vaultwarden/docker-compose.yml)    |
| 15 | `web`            | [Docker Compose](stacks/web/docker-compose.yml)            |


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

```
