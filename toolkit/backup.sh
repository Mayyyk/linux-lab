#!/bin/bash

if [ ! -d $HOME/backup ]; then
	mkdir -p $HOME/backup
	echo "Created directory ~/backup"
fi

timestamp=$(date +%Y%m%d-%H%M%S)
archive_name="backup-$timestamp.tar.gz"

tar -czf $HOME/backup/$archive_name $HOME/Documents

echo "[$timestamp] Created $archive_name from directory ~/Documents" >> $HOME/backup/backup.log


