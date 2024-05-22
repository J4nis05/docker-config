# Show Results in Terminal
ncdu --exclude /mnt --exclude /nas --exclude-caches --exclude-kernfs -e /

# Export Results
ncdu --exclude /mnt --exclude /nas --exclude-caches --exclude-kernfs -e -o /filesystem-scan.json /

# Read Exported File
ncdu -f /filesystem-scan.json
