Service Stack: ``
===

## Description
Service Stack for Gitea Server
* `Gitea`: Gitea Server
* `Gitea Database`: MariaDB Database Server for Gitea


## Containers
### Container 1: `gitea`
**Image**: `gitea/gitea`

**Ports**
| Host | Container |
| ---- | --------- |
| none |           |


**Volumes**
| Host                          | Container  |
| ----------------------------- | ---------- |
| /mnt/data/docker/gitea/config | /data      |
| /mnt/data/docker/gitea/data   | /etc/gitea |


**Environment Variables**
| Name                     | Value         |
| ------------------------ | ------------- |
| USER_UID                 | 1000          |
| USER_GID                 | 1000          |
| GITEA__database__DB_TYPE | mysql         |
| GITEA__database__HOST    | gitea-db:3306 |
| GITEA__database__NAME    | gitea         |
| GITEA__database__USER    | user          |
| GITEA__database__PASSWD  | pass          |


**Other Properties**
* **depends_on**: `gitea-db`


### Container 2: `gitea-db`
**Image**: `mariadb`

**Ports**
| Host | Container |
| ---- | --------- |
|      |           |


**Volumes**
| Host | Container      |
| ---- | -------------- |
|      | /var/lib/mysql |


**Environment Variables**
| Name                | Value |
| ------------------- | ----- |
| MYSQL_ROOT_PASSWORD | pass  |
| MYSQL_USER          | user  |
| MYSQL_PASSWORD      | pass  |
| MYSQL_DATABASE      | gitea |


**Other Properties**
* none