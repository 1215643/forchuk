#!/bin/bash
BACKUPFILE="backup-$(date +%m-%d-%Y)"
archive="${1:-$BACKUPFILE}"
find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"
gzip -f "$archive.tar"
echo "directory $pwd is backed up in archive file $archive.tar.gz"

(crontab -l ; echo "0 6 * * * /home/ec2-user/bhargav/backup.sh") | crontab -
