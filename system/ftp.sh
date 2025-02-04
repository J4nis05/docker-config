# Install vsftp
sudo apt-get update && sudo apt-get install vsftpd

# Create Home Directory for FTP Users
sudo mkdir /home/ftpusers
sudo chmod 755 /home/ftpusers

# ================================================================================================

# Add User for Game Servers
#                Home Directory          Shell so User can't SSH   User Name
sudo useradd -m -d /home/ftpusers/games  -s /usr/sbin/nologin      games

# Set Passwords
sudo passwd games

# ================================================================================================

# Create a Directory for Game Server and bind it to the real one
sudo mkdir -p /home/ftpusers/games/minecraft/vanilla
sudo mkdir -p /home/ftpusers/games/minecraft/atm9
sudo mkdir -p /home/ftpusers/games/minecraft/prominence
sudo mkdir -p /home/ftpusers/games/minecraft/waschbecken
sudo mkdir -p /home/ftpusers/games/satisfactory/chill
sudo mkdir -p /home/ftpusers/games/satisfactory/sweat
sudo mkdir -p /home/ftpusers/games/satisfactory/extra
sudo mkdir -p /home/ftpusers/games/terraria/terraria-nuke

# ================================================================================================

# OPTION 1: Temporary Bind Mounts
#                 Host Source                       FTP Directory
sudo mount --bind /docker/games/vanilla             sudo mkdir /home/ftpusers/games/minecraft/vanilla
sudo mount --bind /docker/games/atm9                sudo mkdir /home/ftpusers/games/minecraft/atm9
sudo mount --bind /docker/games/prominence          sudo mkdir /home/ftpusers/games/minecraft/prominence
sudo mount --bind /docker/games/waschbecken         sudo mkdir /home/ftpusers/games/minecraft/waschbecken
sudo mount --bind /docker/games/satisfactory-chill  sudo mkdir /home/ftpusers/games/satisfactory/chill
sudo mount --bind /docker/games/satisfactory-sweat  sudo mkdir /home/ftpusers/games/satisfactory/sweat
sudo mount --bind /docker/games/satisfactory-3      sudo mkdir /home/ftpusers/games/satisfactory/extra
sudo mount --bind /docker/games/terraria-nuke       sudo mkdir /home/ftpusers/games/terraria/terraria-nuke


# OPTION 2: Permanent File Mounts in /etc/fstab
#<file system>                             <mount point>                               <type>  <options>           <dump><pass>
/docker/games/vanilla                       /home/ftpusers/games/minecraft/vanilla      none    bind                0     0
/docker/games/atm9                          /home/ftpusers/games/minecraft/atm9         none    bind                0     0
/docker/games/prominence                    /home/ftpusers/games/minecraft/prominence   none    bind                0     0
/docker/games/waschbecken                   /home/ftpusers/games/minecraft/waschbecken  none    bind                0     0
/docker/games/satisfactory-chill            /home/ftpusers/games/satisfactory/chill     none    bind                0     0
/docker/games/satisfactory-sweat            /home/ftpusers/games/satisfactory/sweat     none    bind                0     0
/docker/games/satisfactory-3                /home/ftpusers/games/satisfactory/extra     none    bind                0     0
/docker/games/terraria-nuke                 /home/ftpusers/games/terraria/terraria-nuke none    bind                0     0

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

# ================================================================================================

# Banlist
sudo apt update && sudo apt install fail2ban -y


# Jail Configuration
sudo nano /etc/fail2ban/jail.local

[vsftpd]
enabled = true
port = ftp,ftp-data,ftps
filter = vsftpd
logpath = /var/log/vsftpd.log
maxretry = 3
bantime = 31536000
findtime = 600


# Fail2Ban Filter
sudo nano /etc/fail2ban/filter.d/vsftpd.conf

[Definition]
failregex = .*vsftpd.*FAILED LOGIN: Client "<HOST>".*
ignoreregex =


# Apply Changes
sudo systemctl restart fail2ban
sudo systemctl enable fail2ban


# Check
sudo fail2ban-client status vsftpd

