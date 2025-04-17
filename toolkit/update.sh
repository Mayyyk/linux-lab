#!/bin/bash

if [ "$EUID" -ne 0 ]; then
	echo "Run with sudo"
	exit 1
fi


apt update && apt upgrade -y && apt autoremove -y && apt clean


echo "Successfully updated in $SECONDS seconds."

log_file="/home/majk/Documents/update.log"
echo "[$(date +%Y-%m-%d\ %H:%M:%S)] System updated in $SECONDS seconds." >> "$log_file"


