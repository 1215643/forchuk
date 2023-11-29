#!/bin/bash
backupfile=backup-$(date +%m-%d-%Y)

archive=${1:-$backupfile}

find . -mtime -1 -type f -print0 | xargs tar -0 rvf $archive.tar

gzip $archive.tar

echo "directory is backed up in $archive.tar.gz"


#!/bin/bash
#
#BACKUPFILE="backup-$(date +%m-%d-%Y)"
#
#archive="${1:-$BACKUPFILE}"
#
#find . -mtime -1 -type f -print0 | xargs -0 tar rvf "$archive.tar"
#
#gzip "$archive.tar"
#
#echo "Directory $PWD backed up in archive file $archive.tar.gz"
#
#exit 0
