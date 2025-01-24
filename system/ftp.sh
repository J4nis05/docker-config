# Install vsftp
sudo apt-get update && sudo apt-get install vsftpd

# Create Home Directory for FTP Users
sudo mkdir /home/ftpusers
sudo chmod 755 /home/ftpusers

# ================================================================================================

# Add User for Minecraft Servers
#                Home Directory                  Shell so User can't SSH   User Name
sudo useradd -m -d /home/ftpusers/minecraft      -s /usr/sbin/nologin      minecraft 
sudo useradd -m -d /home/ftpusers/satisfactory   -s /usr/sbin/nologin      satisfactory 
sudo useradd -m -d /home/ftpusers/terraria       -s /usr/sbin/nologin      terraria 

# Set Passwords
sudo passwd minecraft
sudo passwd satisfactory
sudo passwd terraria

# ================================================================================================

# Create a Directory for Game Server and bind it to the real one
sudo mkdir /home/ftpusers/minecraft/vanilla
sudo mkdir /home/ftpusers/minecraft/atm9
sudo mkdir /home/ftpusers/minecraft/prominence
sudo mkdir /home/ftpusers/minecraft/waschbecken

sudo mkdir /home/ftpusers/satisfactory/chill
sudo mkdir /home/ftpusers/satisfactory/sweat
sudo mkdir /home/ftpusers/satisfactory/extra

sudo mkdir /home/ftpusers/terraria/terraria-nuke

# ================================================================================================

# OPTION 1: Temporary Bind Mounts
#                 Host Source                       FTP Directory
sudo mount --bind /docker/games/vanilla             /home/ftpusers/minecraft/vanilla
sudo mount --bind /docker/games/atm9                /home/ftpusers/minecraft/atm9
sudo mount --bind /docker/games/prominence          /home/ftpusers/minecraft/prominence
sudo mount --bind /docker/games/waschbecken         /home/ftpusers/minecraft/waschbecken

sudo mount --bind /docker/games/satisfactory-chill  /home/ftpusers/satisfactory/chill
sudo mount --bind /docker/games/satisfactory-sweat  /home/ftpusers/satisfactory/sweat
sudo mount --bind /docker/games/satisfactory-3      /home/ftpusers/satisfactory/extra

sudo mount --bind /docker/games/terraria-nuke       /home/ftpusers/terraria/terraria-nuke


# OPTION 2: Permanent File Mounts in /etc/fstab
#<file system>                             <mount point>                         <type>  <options>           <dump><pass>
/docker/games/vanilla                       /home/ftpusers/minecraft/vanilla      none    bind                0     0
/docker/games/atm9                          /home/ftpusers/minecraft/atm9         none    bind                0     0
/docker/games/prominence                    /home/ftpusers/minecraft/prominence   none    bind                0     0
/docker/games/waschbecken                   /home/ftpusers/minecraft/waschbecken  none    bind                0     0
/docker/games/satisfactory-chill            /home/ftpusers/satisfactory/chill     none    bind                0     0
/docker/games/satisfactory-sweat            /home/ftpusers/satisfactory/sweat     none    bind                0     0
/docker/games/satisfactory-3                /home/ftpusers/satisfactory/extra     none    bind                0     0
/docker/games/terraria-nuke                 /home/ftpusers/terraria/terraria-nuke none    bind                0     0

# ================================================================================================

# Create SSL Certificate
sudo openssl req -x509 -nodes \
    -days 365 \
    -newkey rsa:2048 \
    -keyout /etc/ssl/private/vsftpd.pem \
    -out /etc/ssl/private/vsftpd.pem

sudo chmod 600 /etc/ssl/private/vsftpd.pem

# ================================================================================================

# Update /etc/vsftpd.conf
sudo systemctl restart vsftpd
sudo systemctl enable vsftpd

# Open Ports
sudo ufw allow 21/tcp
sudo ufw allow 40000:50000/tcp
