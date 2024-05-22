Service Stack: `arr`
===

## Description
Service stack for personal Media Server.
* `qBittorrent`: Download Tool
* `Jellyfin`: Media Server based on Emby
* `Jellyseer`: Media Request Tool for Jellyfin
* `Podgrab`: Automatic Podcast Downloader


## Containers
### Container 1: `qbit`
**Image**: `binhex/arch-qbittorrentvpn`

**Ports**
| Host | Container |
| ---- | --------- |
| 6881 | 6881      |
| 6881 | 6881/udp  |
| none |           |

**Volumes**
| Host                                    | Container      |
| --------------------------------------- | -------------- |
| /etc/localtime                          | /etc/localtime |
| /mnt/data/docker/arr/qbittorrent/config | /config        |
| /mnt/data/docker/arr/qbittorrent/theme  | /theme         |
| /mnt/qbit                               | /data          |

**Environment Variables**
| Name                | Value          |
| ------------------- | -------------- |
| VPN_ENABLED         | yes            |
| VPN_PROV            | mullvad        |
| VPN_CLIENT          | openvpn        |
| STRICT_PORT_FORWARD | yes            |
| ENABLE_PRIVOXY      | no             |
| WEBUI_PORT          | 8080           |
| LAN_NETWORK         | 192.168.1.0/24 |
| PUID                | 1000           |
| GUID                | 1000           |

**Other Properties**
* **cap_add**: `NET_ADMIN`
* **devices**: `/dev/net/tun`


### Container 2: `Jellyfin`
**Image**: `jellyfin/jellyfin`

**Ports**
| Host | Container |
| ---- | --------- |
| none | 8096      |

**Volumes**
| Host                                 | Container |
| ------------------------------------ | --------- |
| /mnt/data/docker/arr/jellyfin/config | /config   |
| /mnt/data/docker/arr/jellyfin/cache  | /cache    |
| /nas                                 | /media    |

**Environment Variables**
| Name | Value |
| ---- | ----- |
| none | none  |

**Other Properties**
* none


### Container 3: `Jellyseer`
**Image**: ``

**Ports**
| Host | Container |
| ---- | --------- |
|      |           |

**Volumes**
| Host | Container |
| ---- | --------- |
|      |           |

**Environment Variables**
| Name | Value |
| ---- | ----- |
|      |       |

**Other Properties**
* 


### Container 4: `podgrab`
**Image**: `akhilrex/podgrab`

**Ports**
| Host | Container |
| ---- | --------- |
| none |           |

**Volumes**
| Host                                | Container |
| ----------------------------------- | --------- |
| /mnt/data/docker/arr/podgrab/config | /config   |
| /nas/media/audio/podcasts           | /assets   |

**Environment Variables**
| Name            | Value |
| --------------- | ----- |
| CHECK_FREQUENCY | 240   |

**Other Properties**
* none